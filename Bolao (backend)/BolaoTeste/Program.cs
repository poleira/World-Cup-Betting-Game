using BolaoTeste;
using BolaoTeste.Aplicacao.Cadastros.Servicos;
using BolaoTeste.Aplicacao.Cadastros.Servicos.Interfaces;
using BolaoTeste.Data.Interfaces;
using BolaoTeste.Data.Mapeamento;
using BolaoTeste.Data.Repositorios;
using BolaoTeste.Profiles;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using NHibernate;
using System.Text;
using ISession = NHibernate.ISession;

var builder = WebApplication.CreateBuilder(args);


// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddAutoMapper(typeof(CadastroProfile));

builder.Services.AddCors(options =>
{
    options.AddPolicy("MyCorsImplementationPolicy", builder => { builder.WithOrigins("*");
                                                                 builder.AllowAnyHeader();
                                                                 builder.AllowAnyMethod(); 
    });
});

builder.Services.AddSingleton<ISessionFactory>(factory =>
{
    string connectionString = builder.Configuration.GetConnectionString("MySql");
    return Fluently.Configure().Database(MySQLConfiguration.Standard
                .ConnectionString(connectionString)
                .FormatSql()
                .ShowSql())
                .Mappings(m => m.FluentMappings.AddFromAssemblyOf<CadastroMap>())
                .BuildSessionFactory();
});

builder.Services.AddAuthentication(x =>
{
    x.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    x.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
});


builder.Services.AddSingleton<ISession>(factory => factory.GetService<ISessionFactory>()!.OpenSession());

builder.Services.AddSingleton<ICadastroRepositorio, CadastroRepositorio>();
builder.Services.AddSingleton<ICadastroServico, CadastroServico>();

var key = Encoding.ASCII.GetBytes(TokenSettings.Secret);
builder.Services.AddAuthentication(x =>
{
    x.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    x.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddJwtBearer(x =>
{
    x.RequireHttpsMetadata = false;
    x.SaveToken = true;
    x.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuerSigningKey = true,
        IssuerSigningKey = new SymmetricSecurityKey(key),
        ValidateIssuer = false,
        ValidateAudience = false
    };
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();
app.UseCors("MyCorsImplementationPolicy");
app.UseAuthorization();
app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();

app.Run();

using Microsoft.EntityFrameworkCore;
using template.Mappings;
using template.Models;
using template.Repositories;
using template.Repositories.Impl;
using template.Services;
using template.Services.Impl;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<Progra3PracticaContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("ConnectionDatabase")));

builder.Services.AddCors(option =>
{
    option.AddDefaultPolicy(conf =>
    {
        conf.AllowAnyHeader();
        conf.AllowAnyMethod();
        conf.AllowAnyOrigin();
    });
});

builder.Services.AddScoped<RepoRepository, RepoRepositoryImpl>();
builder.Services.AddScoped<OperacionesService, OperacionesServiceImpl>();

builder.Services.AddAutoMapper(typeof(MapperClass));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors();

app.UseAuthorization();

app.MapControllers();

app.Run();

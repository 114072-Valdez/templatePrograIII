﻿using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace template.Models;

public partial class Progra3PracticaContext : DbContext
{
    public Progra3PracticaContext()
    {
    }

    public Progra3PracticaContext(DbContextOptions<Progra3PracticaContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Albanile> Albaniles { get; set; }

    public virtual DbSet<AlbanilesXObra> AlbanilesXObras { get; set; }

    public virtual DbSet<Deporte> Deportes { get; set; }

    public virtual DbSet<Obra> Obras { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<Socio> Socios { get; set; }

    public virtual DbSet<TiposObra> TiposObras { get; set; }

    public virtual DbSet<Usuario> Usuarios { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    #warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=localhost;Database=progra3_practica;Integrated Security=true;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Albanile>(entity =>
        {
            entity.ToTable("albaniles");

            entity.Property(e => e.Id).ValueGeneratedNever();
            entity.Property(e => e.Apellido).HasMaxLength(100);
            entity.Property(e => e.Nombre).HasMaxLength(100);
        });

        modelBuilder.Entity<AlbanilesXObra>(entity =>
        {
            entity.ToTable("albaniles_x_obras");

            entity.HasIndex(e => e.IdAlbanil, "IX_albaniles_x_obras_IdAlbanil");

            entity.HasIndex(e => e.IdObra, "IX_albaniles_x_obras_IdObra");

            entity.Property(e => e.Id).ValueGeneratedNever();
            entity.Property(e => e.TareaArealizar).HasColumnName("TareaARealizar");

            entity.HasOne(d => d.IdAlbanilNavigation).WithMany(p => p.AlbanilesXObras).HasForeignKey(d => d.IdAlbanil);

            entity.HasOne(d => d.IdObraNavigation).WithMany(p => p.AlbanilesXObras).HasForeignKey(d => d.IdObra);
        });

        modelBuilder.Entity<Deporte>(entity =>
        {
            entity.ToTable("deportes");

            entity.Property(e => e.Id).ValueGeneratedNever();
        });

        modelBuilder.Entity<Obra>(entity =>
        {
            entity.ToTable("obras");

            entity.HasIndex(e => e.IdTipoObra, "IX_obras_IdTipoObra");

            entity.Property(e => e.Id).ValueGeneratedNever();

            entity.HasOne(d => d.IdTipoObraNavigation).WithMany(p => p.Obras).HasForeignKey(d => d.IdTipoObra);
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.ToTable("roles");

            entity.Property(e => e.Id).ValueGeneratedNever();
        });

        modelBuilder.Entity<Socio>(entity =>
        {
            entity.ToTable("socios");

            entity.HasIndex(e => e.IdDeporte, "IX_socios_IdDeporte");

            entity.Property(e => e.Id).ValueGeneratedNever();
            entity.Property(e => e.Apellido).HasMaxLength(100);
            entity.Property(e => e.Nombre).HasMaxLength(100);

            entity.HasOne(d => d.IdDeporteNavigation).WithMany(p => p.Socios).HasForeignKey(d => d.IdDeporte);
        });

        modelBuilder.Entity<TiposObra>(entity =>
        {
            entity.ToTable("tipos_obras");

            entity.Property(e => e.Id).ValueGeneratedNever();
        });

        modelBuilder.Entity<Usuario>(entity =>
        {
            entity.ToTable("usuarios");

            entity.HasIndex(e => e.IdRol, "IX_usuarios_IdRol");

            entity.Property(e => e.Id).ValueGeneratedNever();

            entity.HasOne(d => d.IdRolNavigation).WithMany(p => p.Usuarios).HasForeignKey(d => d.IdRol);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}

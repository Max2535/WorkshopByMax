﻿using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using ConApp.Models;

#nullable disable

namespace ConApp.Class
{
    public partial class cDbContext : DbContext
    {
        public cDbContext()
        {
        }

        public cDbContext(DbContextOptions<cDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<TSOLMProduct> TSOLMProducts { get; set; }
        public virtual DbSet<TSOLSConfig> TSOLSConfigs { get; set; }
        public virtual DbSet<TSOLTInv> TSOLTInvs { get; set; }
        public virtual DbSet<TSOLTOrder> TSOLTOrders { get; set; }
        public virtual DbSet<TSOLTOrderDetail> TSOLTOrderDetails { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=localhost;User Id=sa;Password=8bfw,jvvd;Database=AdaShopeOnLine.MDB");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<TSOLMProduct>(entity =>
            {
                entity.HasKey(e => e.FTPdtCode)
                    .HasName("PK__TSOLMPro__83E11850CFCCE7DA");

                entity.ToTable("TSOLMProduct");

                entity.Property(e => e.FTPdtCode).HasMaxLength(5);

                entity.Property(e => e.FCPdtPri).HasColumnType("decimal(18, 4)");

                entity.Property(e => e.FTPdtName).HasMaxLength(50);
            });

            modelBuilder.Entity<TSOLSConfig>(entity =>
            {
                entity.HasKey(e => e.FTCnfCode)
                    .HasName("PK__TSOLSCon__BC9D5A1DEE1EC902");

                entity.ToTable("TSOLSConfig");

                entity.Property(e => e.FTCnfCode).HasMaxLength(5);

                entity.Property(e => e.FTCnfName).HasMaxLength(50);
            });

            modelBuilder.Entity<TSOLTInv>(entity =>
            {
                entity.HasKey(e => new { e.FTOrdCode, e.FTPdtCode })
                    .HasName("PK__TSOLTInv__80DF5A1334DB9C16");

                entity.ToTable("TSOLTInv");

                entity.Property(e => e.FTOrdCode).HasMaxLength(5);

                entity.Property(e => e.FTPdtCode).HasMaxLength(5);

                entity.Property(e => e.FDInvDate).HasColumnType("datetime");
            });

            modelBuilder.Entity<TSOLTOrder>(entity =>
            {
                entity.HasKey(e => e.FTOrdCode)
                    .HasName("PK__TSOLTOrd__98E14B962F28DEB8");

                entity.ToTable("TSOLTOrder");

                entity.Property(e => e.FTOrdCode)
                    .HasMaxLength(5)
                    .IsUnicode(false);

                entity.Property(e => e.FCOrdAmt).HasColumnType("decimal(18, 4)");

                entity.Property(e => e.FDOrdDate).HasColumnType("datetime");

                entity.Property(e => e.FTOrdCusName)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TSOLTOrderDetail>(entity =>
            {
                entity.HasKey(e => new { e.FTOrdCode, e.FTPdtCode })
                    .HasName("PK__TSOLTOrd__7F20A5ECF8415756");

                entity.Property(e => e.FTOrdCode).HasMaxLength(5);

                entity.Property(e => e.FTPdtCode).HasMaxLength(5);

                entity.Property(e => e.FCOrdDtPri).HasColumnType("decimal(18, 4)");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

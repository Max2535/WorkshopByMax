using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using WinForm.Models;

#nullable disable

namespace WinForm.Class
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
                    .HasName("PK__TSOLMPro__83E118503E791227");

                entity.ToTable("TSOLMProduct");

                entity.Property(e => e.FTPdtCode).HasMaxLength(5);

                entity.Property(e => e.FCPdtPri).HasColumnType("decimal(18, 4)");

                entity.Property(e => e.FTPdtName)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TSOLSConfig>(entity =>
            {
                entity.HasKey(e => e.FTCnfCode)
                    .HasName("PK__TSOLSCon__BC9D5A1DD37A067B");

                entity.ToTable("TSOLSConfig");

                entity.Property(e => e.FTCnfCode).HasMaxLength(5);

                entity.Property(e => e.FTCnfName)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

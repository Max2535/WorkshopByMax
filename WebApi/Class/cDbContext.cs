using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using WebApi.Models;

#nullable disable

namespace WebApi.Class
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
        public virtual DbSet<TSOLPdtPrice> TSOLPdtPrices { get; set; }
        public virtual DbSet<TSOLSConfig> TSOLSConfigs { get; set; }
        public virtual DbSet<TSOLTOrder> TSOLTOrders { get; set; }
        public virtual DbSet<TSOLTOrderDetail> TSOLTOrderDetails { get; set; }
        public virtual DbSet<TSOLTStk> TSOLTStks { get; set; }
        public virtual DbSet<VSOLTOrder> VSOLTOrders { get; set; }

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

            modelBuilder.Entity<TSOLPdtPrice>(entity =>
            {
                entity.HasKey(e => new { e.FTPriCode, e.FTPdtCode })
                    .HasName("PK__TPSTPdtP__FA1CA6A8CE66552C");

                entity.ToTable("TSOLPdtPrice");

                entity.Property(e => e.FTPriCode).HasMaxLength(5);

                entity.Property(e => e.FTPdtCode).HasMaxLength(5);

                entity.Property(e => e.FCPdtPrice).HasColumnType("decimal(18, 4)");

                entity.Property(e => e.FDPriStart).HasColumnType("date");

                entity.Property(e => e.FDPriStop).HasColumnType("date");
            });

            modelBuilder.Entity<TSOLSConfig>(entity =>
            {
                entity.HasKey(e => e.FTCnfCode)
                    .HasName("PK__TSOLSCon__BC9D5A1DEE1EC902");

                entity.ToTable("TSOLSConfig");

                entity.Property(e => e.FTCnfCode).HasMaxLength(5);

                entity.Property(e => e.FTCnfName).HasMaxLength(50);

                entity.Property(e => e.FTCnfValue).HasMaxLength(50);
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

            modelBuilder.Entity<TSOLTStk>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("TSOLTStk");

                entity.Property(e => e.FDInvDate).HasColumnType("datetime");

                entity.Property(e => e.FTInvCnfTypeCode)
                    .IsRequired()
                    .HasMaxLength(5);

                entity.Property(e => e.FTOrdCode)
                    .HasMaxLength(5)
                    .HasComment("เฉพาะขาย");

                entity.Property(e => e.FTPdtCode)
                    .IsRequired()
                    .HasMaxLength(5);
            });

            modelBuilder.Entity<VSOLTOrder>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VSOLTOrder");

                entity.Property(e => e.FCOrdDtPri).HasColumnType("decimal(18, 4)");

                entity.Property(e => e.FTOrdCode)
                    .IsRequired()
                    .HasMaxLength(5);

                entity.Property(e => e.FTPdtCode)
                    .IsRequired()
                    .HasMaxLength(5);

                entity.Property(e => e.FTPdtName).HasMaxLength(50);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

using System;
using kb_bll.Common;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace kb_bll.Models
{
    public partial class KharidoBechoContext : DbContext
    {
        public KharidoBechoContext()
        {
        }

        public KharidoBechoContext(DbContextOptions<KharidoBechoContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Advertise> Advertise { get; set; }
        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<CategoryCar> CategoryCar { get; set; }
        public virtual DbSet<CategoryProperty> CategoryProperty { get; set; }
        public virtual DbSet<Fuel> Fuel { get; set; }
        public virtual DbSet<Images> Images { get; set; }
        public virtual DbSet<Location> Location { get; set; }
        public virtual DbSet<UserDetails> UserDetails { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer(AppSettings.GetConnectionString);
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Advertise>(entity =>
            {
                entity.HasKey(e => e.AdvId);

                entity.Property(e => e.DatePosted)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Description)
                    .IsRequired()
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.Price).HasColumnType("money");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasMaxLength(300)
                    .IsUnicode(false);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.Advertise)
                    .HasForeignKey(d => d.CategoryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Advertise_Category");

                entity.HasOne(d => d.Location)
                    .WithMany(p => p.Advertise)
                    .HasForeignKey(d => d.LocationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Advertise_Location");
            });

            modelBuilder.Entity<Category>(entity =>
            {
                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Description)
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<CategoryCar>(entity =>
            {
                entity.Property(e => e.Brand)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Kmdriven).HasColumnName("KMDriven");
            });

            modelBuilder.Entity<CategoryProperty>(entity =>
            {
                entity.Property(e => e.Construction)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Furnishing)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.ListedBy)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Type)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.Adv)
                    .WithMany(p => p.CategoryProperty)
                    .HasForeignKey(d => d.AdvId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CategoryProperty_Advertise");
            });

            modelBuilder.Entity<Fuel>(entity =>
            {
                entity.Property(e => e.Description)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Fuel1)
                    .IsRequired()
                    .HasColumnName("Fuel")
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Images>(entity =>
            {
                entity.Property(e => e.ImageUrl)
                    .IsRequired()
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.HasOne(d => d.Adv)
                    .WithMany(p => p.Images)
                    .HasForeignKey(d => d.AdvId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Images_Advertise");
            });

            modelBuilder.Entity<Location>(entity =>
            {
                entity.Property(e => e.LocationName)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<UserDetails>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.CreationDate).HasColumnType("datetime");

                entity.Property(e => e.EmailId)
                    .IsRequired()
                    .HasColumnName("EmailID")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.FirstName)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.LastName)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

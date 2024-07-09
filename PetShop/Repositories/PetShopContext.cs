using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Repositories.Models;

namespace Repositories;

// Đây là class đại diện cho database ta đang connect tới
//Chứa luôn câu lệnh kết nối cơ sở dữ liệu (HardCode connection string) vì nó phải móc vào db mới thao tác được
//Hard code thì nguy hiểm, bị lộ thông tin trong dll, và sẽ bị dịch ngược bởi dotpeek,...
//hard code sẽ chỉ chơi được với 1 db và 1 cặp username và password
//Cần giấu infor server
//Tách gỡ connection string ra khỏi class này
//Class này sẽ đọc info cấu hình ở 1 file bên ngoài đặt tại thư mục nào đó | Thư mục GUI APP
//Tập tin chứa info kết nối csdl thì gọi là Configuration file ( file text thuần nhưng có định dạng trong contents để dễ đọc thông tin
//Đuôi nó thường có dạng .json

public partial class PetShopContext : DbContext
{
    public PetShopContext()
    {
    }

    public PetShopContext(DbContextOptions<PetShopContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Account> Accounts { get; set; }

    public virtual DbSet<Item> Items { get; set; }

    public virtual DbSet<Pet> Pets { get; set; }

    public virtual DbSet<Service> Services { get; set; }

    public virtual DbSet<ServiceUsing> ServiceUsings { get; set; }

    private string GetConnectionString()
    {
        IConfiguration configuration = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json", true, true).Build();
        return configuration["ConnectionStrings:DefaultConnectionStringDB"];
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        if(!optionsBuilder.IsConfigured){
            optionsBuilder.UseSqlServer(GetConnectionString());
        }
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Account>(entity =>
        {
            entity.HasKey(e => e.AccountId).HasName("PK__Accounts__46A222CD58133A8C");

            entity.Property(e => e.AccountId).HasColumnName("account_id");
            entity.Property(e => e.Account1)
                .HasMaxLength(50)
                .HasColumnName("account");
            entity.Property(e => e.AccountType).HasColumnName("account_type");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.Password)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("password");
            entity.Property(e => e.PhoneNumber)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("phone_number");
        });

        modelBuilder.Entity<Item>(entity =>
        {
            entity.HasKey(e => e.ItemId).HasName("PK__Items__52020FDD3ED4CF3A");

            entity.Property(e => e.ItemId).HasColumnName("item_id");
            entity.Property(e => e.ItemName)
                .HasMaxLength(100)
                .HasColumnName("item_name");
            entity.Property(e => e.Quantity).HasColumnName("quantity");
        });

        modelBuilder.Entity<Pet>(entity =>
        {
            entity.HasKey(e => e.PetId).HasName("PK__pet__390CC5FE6136B628");

            entity.ToTable("pet");

            entity.Property(e => e.PetId).HasColumnName("pet_id");
            entity.Property(e => e.PetBreeds)
                .HasMaxLength(25)
                .IsUnicode(false)
                .HasColumnName("pet_breeds");
            entity.Property(e => e.PetType)
                .HasMaxLength(25)
                .IsUnicode(false)
                .HasColumnName("pet_type");
        });

        modelBuilder.Entity<Service>(entity =>
        {
            entity.HasKey(e => e.ServiceId).HasName("PK__Services__3E0DB8AF441A6668");

            entity.Property(e => e.ServiceId).HasColumnName("service_id");
            entity.Property(e => e.ServiceCharge).HasColumnName("service_charge");
            entity.Property(e => e.ServiceName)
                .HasMaxLength(50)
                .HasColumnName("service_name");
        });

        modelBuilder.Entity<ServiceUsing>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("service_using");

            entity.Property(e => e.AccountId).HasColumnName("account_id");
            entity.Property(e => e.ServiceId).HasColumnName("service_id");

            entity.HasOne(d => d.Account).WithMany()
                .HasForeignKey(d => d.AccountId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__service_u__accou__3E52440B");

            entity.HasOne(d => d.Service).WithMany()
                .HasForeignKey(d => d.ServiceId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__service_u__servi__3F466844");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}

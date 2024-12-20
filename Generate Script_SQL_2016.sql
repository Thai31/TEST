USE [master]
GO

CREATE DATABASE [QTBH]
 
GO
ALTER DATABASE [QTBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QTBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QTBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QTBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QTBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QTBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QTBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QTBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QTBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QTBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QTBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QTBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QTBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QTBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QTBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QTBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QTBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QTBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QTBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QTBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QTBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QTBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QTBH] SET RECOVERY FULL 
GO
ALTER DATABASE [QTBH] SET  MULTI_USER 
GO
ALTER DATABASE [QTBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QTBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QTBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QTBH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QTBH] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QTBH', N'ON'
GO
ALTER DATABASE [QTBH] SET QUERY_STORE = OFF
GO
USE [QTBH]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [QTBH]
GO
/****** Object:  Table [dbo].[hdn]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hdn](
	[hd_nhap] [nchar](5) NOT NULL,
	[ma_nv] [nchar](5) NULL,
	[ma_sp] [nchar](5) NULL,
	[ngay_lp] [date] NULL,
	[sl] [int] NULL,
	[dg] [int] NULL,
	[thanh_tien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hd_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hdx]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hdx](
	[hd_xuat] [nchar](5) NOT NULL,
	[ma_kh] [nchar](5) NULL,
	[ma_sp] [nchar](5) NULL,
	[ma_nv] [nchar](5) NULL,
	[ngay_lp] [date] NULL,
	[sl] [int] NULL,
	[dg] [int] NULL,
	[thanh_tien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hd_xuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ma_kh] [nchar](5) NOT NULL,
	[ten] [nvarchar](70) NULL,
	[gioi_tinh] [nchar](5) NULL,
	[dia_chi] [nvarchar](70) NULL,
	[sdt] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_kh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai_Hang]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_Hang](
	[ma_lh] [nchar](5) NOT NULL,
	[loai_hang] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_lh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[ma_nv] [nchar](5) NULL,
	[so_gio] [int] NULL,
	[luong1h] [int] NULL,
	[ngay_nLuong] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[ma_nhacc] [nchar](5) NOT NULL,
	[ten_ct] [nvarchar](70) NULL,
	[dia_chi] [nvarchar](70) NULL,
	[sdt] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhacc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ma_nv] [nchar](5) NOT NULL,
	[ten] [nvarchar](70) NULL,
	[tuoi] [int] NULL,
	[gioi_tinh] [nchar](5) NULL,
	[ngay_nViec] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ma_sp] [nchar](5) NOT NULL,
	[ma_nhacc] [nchar](5) NULL,
	[ten_sp] [nvarchar](70) NULL,
	[hang_sx] [nvarchar](70) NULL,
	[mat_hang] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_k]    Script Date: 6/5/2024 1:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_k](
	[tk] [nchar](20) NOT NULL,
	[mk] [varchar](40) NULL,
	[ten_nd] [nvarchar](70) NULL,
	[cv] [nvarchar](9) NULL,
PRIMARY KEY CLUSTERED 
(
	[tk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[hdn] ([hd_nhap], [ma_nv], [ma_sp], [ngay_lp], [sl], [dg], [thanh_tien]) VALUES (N'SP203', N'CT220', N'SP234', CAST(N'2024-01-05' AS Date), 5, 35000, 525000)
INSERT [dbo].[hdn] ([hd_nhap], [ma_nv], [ma_sp], [ngay_lp], [sl], [dg], [thanh_tien]) VALUES (N'SP288', N'CT220', N'SP964', CAST(N'2024-05-12' AS Date), 3, 3748, 50000)
INSERT [dbo].[hdn] ([hd_nhap], [ma_nv], [ma_sp], [ngay_lp], [sl], [dg], [thanh_tien]) VALUES (N'SP310', N'CT157', N'SP74 ', CAST(N'2024-01-05' AS Date), 2, 5000, 10000)
INSERT [dbo].[hdn] ([hd_nhap], [ma_nv], [ma_sp], [ngay_lp], [sl], [dg], [thanh_tien]) VALUES (N'SP529', N'CT157', N'SP74 ', CAST(N'2024-05-12' AS Date), 17, 6000, 120000)
INSERT [dbo].[hdn] ([hd_nhap], [ma_nv], [ma_sp], [ngay_lp], [sl], [dg], [thanh_tien]) VALUES (N'SP586', N'CT313', N'SP234', CAST(N'2024-12-29' AS Date), 10, 11250, 100000)
INSERT [dbo].[hdn] ([hd_nhap], [ma_nv], [ma_sp], [ngay_lp], [sl], [dg], [thanh_tien]) VALUES (N'SP662', N'CT220', N'SP752', CAST(N'2024-05-12' AS Date), 3, 560000, 3360000)
GO
INSERT [dbo].[hdx] ([hd_xuat], [ma_kh], [ma_sp], [ma_nv], [ngay_lp], [sl], [dg], [thanh_tien]) VALUES (N'SP397', N'KH746', N'SP752', N'CT313', CAST(N'2024-12-12' AS Date), 2, 560000, 1120000)
INSERT [dbo].[hdx] ([hd_xuat], [ma_kh], [ma_sp], [ma_nv], [ngay_lp], [sl], [dg], [thanh_tien]) VALUES (N'SP580', N'KH229', N'SP964', N'CT157', CAST(N'2024-08-15' AS Date), 5, 10000, 50000)
GO
INSERT [dbo].[KhachHang] ([ma_kh], [ten], [gioi_tinh], [dia_chi], [sdt]) VALUES (N'KH229', N'An Luu', N'Nam  ', N'Thai Binh', N'097256671 ')
INSERT [dbo].[KhachHang] ([ma_kh], [ten], [gioi_tinh], [dia_chi], [sdt]) VALUES (N'KH340', N'Hoàng Yến', N'Nữ   ', N'Hà Nội', N'0336721313')
INSERT [dbo].[KhachHang] ([ma_kh], [ten], [gioi_tinh], [dia_chi], [sdt]) VALUES (N'KH746', N'Chí Thanh', N'Nam  ', N'Nam Định', N'          ')
GO
INSERT [dbo].[Loai_Hang] ([ma_lh], [loai_hang]) VALUES (N'MH2  ', N'Son')
INSERT [dbo].[Loai_Hang] ([ma_lh], [loai_hang]) VALUES (N'MH21 ', N'Sữa rửa mặt')
INSERT [dbo].[Loai_Hang] ([ma_lh], [loai_hang]) VALUES (N'MH29 ', N'Lăn khử mùi')
INSERT [dbo].[Loai_Hang] ([ma_lh], [loai_hang]) VALUES (N'MH37 ', N'Phấn')
INSERT [dbo].[Loai_Hang] ([ma_lh], [loai_hang]) VALUES (N'MH45 ', N'Kem che khuyết điểm')
INSERT [dbo].[Loai_Hang] ([ma_lh], [loai_hang]) VALUES (N'MH53 ', N'Kem chống nắng')
INSERT [dbo].[Loai_Hang] ([ma_lh], [loai_hang]) VALUES (N'MH72 ', N'Đồ Dùng Cá Nhân')
GO
INSERT [dbo].[Luong] ([ma_nv], [so_gio], [luong1h], [ngay_nLuong]) VALUES (N'CT157', 0, 20000, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Luong] ([ma_nv], [so_gio], [luong1h], [ngay_nLuong]) VALUES (N'CT313', 2, 15000, CAST(N'2024-05-14' AS Date))
GO
INSERT [dbo].[NhaCungCap] ([ma_nhacc], [ten_ct], [dia_chi], [sdt]) VALUES (N'CT4  ', N'TNHH Hoa Sen', N'2/77 Trần Quang Khải', N'0912381132')
INSERT [dbo].[NhaCungCap] ([ma_nhacc], [ten_ct], [dia_chi], [sdt]) VALUES (N'CT445', N'Bé Cưng Store', N'120 Giải Phóng', N'0912939123')
INSERT [dbo].[NhaCungCap] ([ma_nhacc], [ten_ct], [dia_chi], [sdt]) VALUES (N'CT686', N'Lương Anh Tài', N'Thái Nguyễn', N'0977513022')
INSERT [dbo].[NhaCungCap] ([ma_nhacc], [ten_ct], [dia_chi], [sdt]) VALUES (N'CT701', N'Tạp Hóa Binh Chí', N'171 Trần Thái Tông', N'0919392312')
INSERT [dbo].[NhaCungCap] ([ma_nhacc], [ten_ct], [dia_chi], [sdt]) VALUES (N'CT755', N'CT Sắt Thép', N'Cụm CN Mỹ Xá', N'          ')
INSERT [dbo].[NhaCungCap] ([ma_nhacc], [ten_ct], [dia_chi], [sdt]) VALUES (N'CT792', N'Nhà Sách An Long', N'TP Nam Định', N'          ')
INSERT [dbo].[NhaCungCap] ([ma_nhacc], [ten_ct], [dia_chi], [sdt]) VALUES (N'NCC60', N'Bia Sai Gon', N'3/66 Long An', N'          ')
GO
INSERT [dbo].[NhanVien] ([ma_nv], [ten], [tuoi], [gioi_tinh], [ngay_nViec]) VALUES (N'CT157', N'Hà Hoán', 20, N'Nam  ', CAST(N'2024-05-14' AS Date))
INSERT [dbo].[NhanVien] ([ma_nv], [ten], [tuoi], [gioi_tinh], [ngay_nViec]) VALUES (N'CT220', N'Ngọc Tiêu', 30, N'Nam  ', CAST(N'2024-02-02' AS Date))
INSERT [dbo].[NhanVien] ([ma_nv], [ten], [tuoi], [gioi_tinh], [ngay_nViec]) VALUES (N'CT313', N'Thanh Lam', 18, N'Nữ   ', CAST(N'2023-05-14' AS Date))
GO
INSERT [dbo].[SanPham] ([ma_sp], [ma_nhacc], [ten_sp], [hang_sx], [mat_hang]) VALUES (N'SP234', N'CT445', N'Son lì không trôi', N'CTCP ThaCo', N'Son')
INSERT [dbo].[SanPham] ([ma_sp], [ma_nhacc], [ten_sp], [hang_sx], [mat_hang]) VALUES (N'SP74 ', N'CT792', N'Sửa rửa mặt cocolin', N'NXB Kim Đồng', N'Sữa rửa mặt')
INSERT [dbo].[SanPham] ([ma_sp], [ma_nhacc], [ten_sp], [hang_sx], [mat_hang]) VALUES (N'SP752', N'CT701', N'Phấn nền phủ', N'LCD PAY', N'Phấn')
INSERT [dbo].[SanPham] ([ma_sp], [ma_nhacc], [ten_sp], [hang_sx], [mat_hang]) VALUES (N'SP964', N'CT792', N'Kem che khuyết điểm siêu mịn', N'NXB Kim Đồng', N'Kem che khuyết điểm')
GO
INSERT [dbo].[t_k] ([tk], [mk], [ten_nd], [cv]) VALUES (N'Admin               ', N'123', N'Admin', N'Admin')
INSERT [dbo].[t_k] ([tk], [mk], [ten_nd], [cv]) VALUES (N'CT157               ', N'111', N'Hà Hoán', N'Nhân Viên')
INSERT [dbo].[t_k] ([tk], [mk], [ten_nd], [cv]) VALUES (N'CT220               ', N'1234567', N'Ngọc Tiêu', N'Nhân Viên')
INSERT [dbo].[t_k] ([tk], [mk], [ten_nd], [cv]) VALUES (N'CT313               ', N'123', N'Thanh Lam', N'Nhân Viên')
GO
ALTER TABLE [dbo].[hdn]  WITH CHECK ADD FOREIGN KEY([ma_sp])
REFERENCES [dbo].[SanPham] ([ma_sp])
GO
ALTER TABLE [dbo].[hdn]  WITH CHECK ADD FOREIGN KEY([ma_nv])
REFERENCES [dbo].[NhanVien] ([ma_nv])
GO
ALTER TABLE [dbo].[hdx]  WITH CHECK ADD FOREIGN KEY([ma_nv])
REFERENCES [dbo].[NhanVien] ([ma_nv])
GO
ALTER TABLE [dbo].[hdx]  WITH CHECK ADD FOREIGN KEY([ma_sp])
REFERENCES [dbo].[SanPham] ([ma_sp])
GO
ALTER TABLE [dbo].[hdx]  WITH CHECK ADD FOREIGN KEY([ma_kh])
REFERENCES [dbo].[KhachHang] ([ma_kh])
GO
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD FOREIGN KEY([ma_nv])
REFERENCES [dbo].[NhanVien] ([ma_nv])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([ma_nhacc])
REFERENCES [dbo].[NhaCungCap] ([ma_nhacc])
GO
USE [master]
GO
ALTER DATABASE [QTBH] SET  READ_WRITE 
GO

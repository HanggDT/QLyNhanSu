USE [master]
GO
/****** Object:  Database [QLNS]    Script Date: 5/11/2021 1:33:28 PM ******/
CREATE DATABASE [QLNS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNS', FILENAME = N'E:\tai_lieu_tren_lop\K2-Nam3\TTCSDL\QLNS-Main\QLNS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNS_log', FILENAME = N'E:\tai_lieu_tren_lop\K2-Nam3\TTCSDL\QLNS-Main\QLNS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLNS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNS] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNS] SET  MULTI_USER 
GO
ALTER DATABASE [QLNS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLNS] SET QUERY_STORE = OFF
GO
USE [QLNS]
GO
/****** Object:  Table [dbo].[BANG_CHAM_CONG]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANG_CHAM_CONG](
	[MaNS] [int] NOT NULL,
	[SoNgayDiLam] [tinyint] NULL,
	[SoNgayNghiCoPhep] [tinyint] NULL,
	[SoNgayNghi] [tinyint] NULL,
	[Thang] [tinyint] NOT NULL,
	[Nam] [int] NOT NULL,
 CONSTRAINT [PK_BCC] PRIMARY KEY CLUSTERED 
(
	[MaNS] ASC,
	[Thang] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUC_VU]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUC_VU](
	[MaCV] [int] IDENTITY(1,1) NOT NULL,
	[TenCV] [nvarchar](50) NULL,
	[MoTa] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DU_AN]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DU_AN](
	[MaDA] [int] IDENTITY(1,1) NOT NULL,
	[TenDA] [nvarchar](50) NULL,
	[TGBD] [date] NULL,
	[TGHTDK] [date] NULL,
	[SoTV] [tinyint] NULL,
	[MaQL] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOP_DONG]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOP_DONG](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[LoaiHD] [nvarchar](30) NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[NgayKyHD] [date] NULL,
	[MaNS] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHEN_THUONG]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHEN_THUONG](
	[MaKT] [int] IDENTITY(1,1) NOT NULL,
	[HinhThucKT] [nvarchar](50) NULL,
	[NgayKT] [date] NULL,
	[GiaTri] [decimal](18, 2) NULL,
	[NoiDung] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONG]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONG](
	[MaNS] [int] NOT NULL,
	[PhuCap] [money] NULL,
	[LuongCoBan] [money] NULL,
 CONSTRAINT [PK_LUONG_1] PRIMARY KEY CLUSTERED 
(
	[MaNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN_SU]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_SU](
	[MaNS] [int] IDENTITY(10000000,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[QueQuan] [nvarchar](100) NULL,
	[SDT] [char](10) NULL,
	[TrinhDo] [nchar](10) NULL,
	[DanToc] [nchar](10) NULL,
	[ChuyenNganh] [nvarchar](50) NULL,
	[QuocTich] [nchar](10) NULL,
	[Avt] [image] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MaPB] [int] NULL,
	[MaHD] [int] NULL,
	[MaCV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN_SU_BACKUP]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_SU_BACKUP](
	[MaNS] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[QueQuan] [nvarchar](100) NULL,
	[SDT] [char](10) NULL,
	[TrinhDo] [nchar](10) NULL,
	[DanToc] [nchar](10) NULL,
	[ChuyenNganh] [nvarchar](50) NULL,
	[QuocTich] [nchar](10) NULL,
	[Avt] [image] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MaPB] [int] NULL,
	[MaHD] [int] NULL,
	[MaCV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANSU_DUAN]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANSU_DUAN](
	[MaNS] [int] NOT NULL,
	[MaDA] [int] NOT NULL,
 CONSTRAINT [PK_NHANSU_DUAN] PRIMARY KEY CLUSTERED 
(
	[MaNS] ASC,
	[MaDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANSU_KHENTHUONG]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANSU_KHENTHUONG](
	[MaNS] [int] NOT NULL,
	[MaKT] [int] NOT NULL,
 CONSTRAINT [PK_NHANSU_KHENTHUONG] PRIMARY KEY CLUSTERED 
(
	[MaNS] ASC,
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG_BAN]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG_BAN](
	[MaPB] [int] IDENTITY(1,1) NOT NULL,
	[TenPB] [nvarchar](100) NULL,
	[DiaCHi] [nvarchar](100) NULL,
	[Email] [char](50) NULL,
	[SDT] [char](10) NULL,
	[MaTruongPhong] [int] NULL,
 CONSTRAINT [PK__PHONG_BA__2725E7E43D6790BF] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BANG_CHAM_CONG] ([MaNS], [SoNgayDiLam], [SoNgayNghiCoPhep], [SoNgayNghi], [Thang], [Nam]) VALUES (10000000, 28, 2, 2, 5, 2021)
INSERT [dbo].[BANG_CHAM_CONG] ([MaNS], [SoNgayDiLam], [SoNgayNghiCoPhep], [SoNgayNghi], [Thang], [Nam]) VALUES (10000001, 28, 2, 2, 5, 2021)
INSERT [dbo].[BANG_CHAM_CONG] ([MaNS], [SoNgayDiLam], [SoNgayNghiCoPhep], [SoNgayNghi], [Thang], [Nam]) VALUES (10001001, 15, 0, 15, 5, 2021)
INSERT [dbo].[BANG_CHAM_CONG] ([MaNS], [SoNgayDiLam], [SoNgayNghiCoPhep], [SoNgayNghi], [Thang], [Nam]) VALUES (10002001, 10, 0, 20, 5, 2021)
GO
SET IDENTITY_INSERT [dbo].[CHUC_VU] ON 

INSERT [dbo].[CHUC_VU] ([MaCV], [TenCV], [MoTa]) VALUES (1, N'Nhân viên', NULL)
INSERT [dbo].[CHUC_VU] ([MaCV], [TenCV], [MoTa]) VALUES (2, N'Trưởng phòng', NULL)
INSERT [dbo].[CHUC_VU] ([MaCV], [TenCV], [MoTa]) VALUES (3, N'Thư ký', NULL)
INSERT [dbo].[CHUC_VU] ([MaCV], [TenCV], [MoTa]) VALUES (4, N'Giám đốc', NULL)
INSERT [dbo].[CHUC_VU] ([MaCV], [TenCV], [MoTa]) VALUES (5, N'Bảo vệ', NULL)
SET IDENTITY_INSERT [dbo].[CHUC_VU] OFF
GO
SET IDENTITY_INSERT [dbo].[DU_AN] ON 

INSERT [dbo].[DU_AN] ([MaDA], [TenDA], [TGBD], [TGHTDK], [SoTV], [MaQL]) VALUES (3, N'hộp bảo mật', CAST(N'2021-10-05' AS Date), CAST(N'2021-10-05' AS Date), 2, 10000000)
INSERT [dbo].[DU_AN] ([MaDA], [TenDA], [TGBD], [TGHTDK], [SoTV], [MaQL]) VALUES (4, N'Dự Án 10', CAST(N'2021-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1, 10000001)
INSERT [dbo].[DU_AN] ([MaDA], [TenDA], [TGBD], [TGHTDK], [SoTV], [MaQL]) VALUES (5, N'hộp bảo mật 3', CAST(N'2021-05-10' AS Date), CAST(N'2021-08-10' AS Date), 1, 10002005)
SET IDENTITY_INSERT [dbo].[DU_AN] OFF
GO
SET IDENTITY_INSERT [dbo].[HOP_DONG] ON 

INSERT [dbo].[HOP_DONG] ([MaHD], [LoaiHD], [NgayBD], [NgayKT], [NgayKyHD], [MaNS]) VALUES (1, N'Hợp đồng lao ', CAST(N'2020-05-06' AS Date), CAST(N'2025-05-06' AS Date), CAST(N'2020-01-05' AS Date), NULL)
INSERT [dbo].[HOP_DONG] ([MaHD], [LoaiHD], [NgayBD], [NgayKT], [NgayKyHD], [MaNS]) VALUES (2, N'Hợp đồng ngắn hạn', CAST(N'2020-05-06' AS Date), CAST(N'2021-05-06' AS Date), CAST(N'2020-01-05' AS Date), NULL)
INSERT [dbo].[HOP_DONG] ([MaHD], [LoaiHD], [NgayBD], [NgayKT], [NgayKyHD], [MaNS]) VALUES (1002, N'', CAST(N'1800-01-01' AS Date), CAST(N'1800-01-01' AS Date), CAST(N'1800-01-01' AS Date), NULL)
INSERT [dbo].[HOP_DONG] ([MaHD], [LoaiHD], [NgayBD], [NgayKT], [NgayKyHD], [MaNS]) VALUES (1003, N'HD', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOP_DONG] ([MaHD], [LoaiHD], [NgayBD], [NgayKT], [NgayKyHD], [MaNS]) VALUES (1004, N'', CAST(N'1800-01-01' AS Date), CAST(N'1800-01-01' AS Date), CAST(N'1800-01-01' AS Date), NULL)
INSERT [dbo].[HOP_DONG] ([MaHD], [LoaiHD], [NgayBD], [NgayKT], [NgayKyHD], [MaNS]) VALUES (2002, N'', CAST(N'1800-01-01' AS Date), CAST(N'1800-01-01' AS Date), CAST(N'1800-01-01' AS Date), 10002001)
INSERT [dbo].[HOP_DONG] ([MaHD], [LoaiHD], [NgayBD], [NgayKT], [NgayKyHD], [MaNS]) VALUES (2006, N'', CAST(N'1800-01-01' AS Date), CAST(N'1800-01-01' AS Date), CAST(N'1800-01-01' AS Date), 10002005)
SET IDENTITY_INSERT [dbo].[HOP_DONG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHEN_THUONG] ON 

INSERT [dbo].[KHEN_THUONG] ([MaKT], [HinhThucKT], [NgayKT], [GiaTri], [NoiDung]) VALUES (1, N'Tiền mặt', CAST(N'2021-05-10' AS Date), CAST(12000000.00 AS Decimal(18, 2)), N'Hoàn thành dự án')
INSERT [dbo].[KHEN_THUONG] ([MaKT], [HinhThucKT], [NgayKT], [GiaTri], [NoiDung]) VALUES (2, N'Tiềm mặt', CAST(N'2021-10-20' AS Date), CAST(1000000.00 AS Decimal(18, 2)), N'Ngày 20/10')
INSERT [dbo].[KHEN_THUONG] ([MaKT], [HinhThucKT], [NgayKT], [GiaTri], [NoiDung]) VALUES (3, N'Tiềm mặt', CAST(N'2021-12-20' AS Date), CAST(1000000.00 AS Decimal(18, 2)), N'Hoàn thành dự án 10')
INSERT [dbo].[KHEN_THUONG] ([MaKT], [HinhThucKT], [NgayKT], [GiaTri], [NoiDung]) VALUES (4, N'Tiềm mặt', CAST(N'2021-12-20' AS Date), CAST(1000000.00 AS Decimal(18, 2)), N'Hoàn thành dự án 20')
INSERT [dbo].[KHEN_THUONG] ([MaKT], [HinhThucKT], [NgayKT], [GiaTri], [NoiDung]) VALUES (5, N'Tiềm mặt', CAST(N'2020-01-10' AS Date), CAST(1000000.00 AS Decimal(18, 2)), N'Hoàn thành dự án hộp bảo mật')
SET IDENTITY_INSERT [dbo].[KHEN_THUONG] OFF
GO
INSERT [dbo].[LUONG] ([MaNS], [PhuCap], [LuongCoBan]) VALUES (10000000, 10000000.0000, 100000000.0000)
INSERT [dbo].[LUONG] ([MaNS], [PhuCap], [LuongCoBan]) VALUES (10000001, 10000000.0000, 20000000.0000)
INSERT [dbo].[LUONG] ([MaNS], [PhuCap], [LuongCoBan]) VALUES (10001001, 1000000.0000, 7000000.0000)
INSERT [dbo].[LUONG] ([MaNS], [PhuCap], [LuongCoBan]) VALUES (10002001, 100000.0000, 3000000.0000)
INSERT [dbo].[LUONG] ([MaNS], [PhuCap], [LuongCoBan]) VALUES (10002005, 1000000.0000, 20000000.0000)
GO
SET IDENTITY_INSERT [dbo].[NHAN_SU] ON 

INSERT [dbo].[NHAN_SU] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10000000, N'Kiều Trung Anh', CAST(N'2000-05-07' AS Date), 1, N'Lào Cai', N'0123456789', N'Kỹ sư     ', N'Kinh      ', N'An toàn thông tin', N'VIE       ', NULL, N'Số 5 ngách 44 Ngõ 487', 3, 1, 4)
INSERT [dbo].[NHAN_SU] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10000001, N'Nguyễn Thị Huyền My', CAST(N'2000-01-21' AS Date), 1, N'Lào Cai', N'0123456790', N'Thạc sĩ   ', N'Kinh      ', N'Marketing', N'VIE       ', NULL, N'sn123456782', 2, 2, 1)
INSERT [dbo].[NHAN_SU] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10001001, N'Hoàng Thị Hiên', CAST(N'2000-05-01' AS Date), 0, N'Bắc Giang', N'0123321341', N'Kỹ Sư     ', N'Kinh      ', N'Công nghệ dữ liệu', N'VIE       ', NULL, N'Bắc Từ Liêm', 3, 1002, 1)
INSERT [dbo].[NHAN_SU] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10002001, N'Đặng Thị Hằng', CAST(N'2000-01-01' AS Date), 0, N'Hà Tĩnh', N'012312399 ', N'Kỹ sư     ', N'Kinh      ', N'CN1', N'VIE       ', NULL, N'sn 2/42/112', 3, 2002, 1)
INSERT [dbo].[NHAN_SU] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10002005, N'Nguyễn Văn C', CAST(N'2000-01-01' AS Date), 0, N'Hà Nội', N'012312399 ', N'Kỹ sư     ', N'Kinh      ', N'CN2', N'VIE       ', NULL, N'sn 2/42/112', 1, 2006, 1)
SET IDENTITY_INSERT [dbo].[NHAN_SU] OFF
GO
INSERT [dbo].[NHAN_SU_BACKUP] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10001002, N'Đặng Thị Hăng', CAST(N'2000-07-03' AS Date), 0, N'Hà Tĩnh', N'0324234923', N'Kỹ sư     ', N'Kinh      ', N'Kế toán', N'VIE       ', NULL, N'dq33e', 1, 1004, 3)
INSERT [dbo].[NHAN_SU_BACKUP] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10002002, N'Nguyễn Văn B', CAST(N'2000-01-01' AS Date), 0, N'Hà Tĩnh', N'012312399 ', N'Kỹ sư     ', N'Kinh      ', N'CN1', N'VIE       ', NULL, N'sn 2/42/112', 1, NULL, 1)
INSERT [dbo].[NHAN_SU_BACKUP] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10002003, N'Nguyễn Văn C', CAST(N'2000-01-01' AS Date), 0, N'Hà Nội', N'012312399 ', N'Kỹ sư     ', N'Kinh      ', N'CN2', N'VIE       ', NULL, N'sn 2/42/112', 2, NULL, 1)
INSERT [dbo].[NHAN_SU_BACKUP] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10002004, N'Nguyễn Văn B', CAST(N'2000-01-01' AS Date), 0, N'Hà Tĩnh', N'012312399 ', N'Kỹ sư     ', N'Kinh      ', N'CN1', N'VIE       ', NULL, N'sn 2/42/112', 1, NULL, 1)
INSERT [dbo].[NHAN_SU_BACKUP] ([MaNS], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [TrinhDo], [DanToc], [ChuyenNganh], [QuocTich], [Avt], [DiaChi], [MaPB], [MaHD], [MaCV]) VALUES (10002006, N'đá', CAST(N'2000-01-21' AS Date), 1, N'qư', N'qudqw     ', N'e         ', N'ưeqw      ', N'dư', N'qwewq     ', NULL, N'eqwe', 4, NULL, 3)
GO
INSERT [dbo].[NHANSU_DUAN] ([MaNS], [MaDA]) VALUES (10000000, 3)
INSERT [dbo].[NHANSU_DUAN] ([MaNS], [MaDA]) VALUES (10000001, 3)
INSERT [dbo].[NHANSU_DUAN] ([MaNS], [MaDA]) VALUES (10000001, 4)
INSERT [dbo].[NHANSU_DUAN] ([MaNS], [MaDA]) VALUES (10002005, 5)
GO
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000000, 1)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000000, 2)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000000, 3)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000000, 4)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000000, 5)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000001, 1)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000001, 2)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000001, 3)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10000001, 4)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10001001, 1)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10001001, 2)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10001001, 4)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10002001, 2)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10002001, 3)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10002005, 2)
INSERT [dbo].[NHANSU_KHENTHUONG] ([MaNS], [MaKT]) VALUES (10002005, 3)
GO
SET IDENTITY_INSERT [dbo].[PHONG_BAN] ON 

INSERT [dbo].[PHONG_BAN] ([MaPB], [TenPB], [DiaCHi], [Email], [SDT], [MaTruongPhong]) VALUES (1, N'Phòng nhân sự', N'P102', N'phongnhansu@gmail.com                             ', N'0123456789', NULL)
INSERT [dbo].[PHONG_BAN] ([MaPB], [TenPB], [DiaCHi], [Email], [SDT], [MaTruongPhong]) VALUES (2, N'Phòng Marketing', N'P103', N'phongmarketing@gmail.com                          ', N'0123456790', NULL)
INSERT [dbo].[PHONG_BAN] ([MaPB], [TenPB], [DiaCHi], [Email], [SDT], [MaTruongPhong]) VALUES (3, N'Phong IT', N'P104', N'phongIT@gmail.com                                 ', N'0123456791', NULL)
INSERT [dbo].[PHONG_BAN] ([MaPB], [TenPB], [DiaCHi], [Email], [SDT], [MaTruongPhong]) VALUES (4, N'Phòng điều hành ', N'P105', N'phongdieuhanh                                     ', N'0123456792', NULL)
INSERT [dbo].[PHONG_BAN] ([MaPB], [TenPB], [DiaCHi], [Email], [SDT], [MaTruongPhong]) VALUES (1003, N'Phòng IT 2', N'P122', N'it2@gmail.com                                     ', N'0123123123', 10000000)
INSERT [dbo].[PHONG_BAN] ([MaPB], [TenPB], [DiaCHi], [Email], [SDT], [MaTruongPhong]) VALUES (1004, N'Phòng IT 3', N'P122', N'it2@gmail.com                                     ', N'0123123123', 10000000)
SET IDENTITY_INSERT [dbo].[PHONG_BAN] OFF
GO
ALTER TABLE [dbo].[BANG_CHAM_CONG]  WITH CHECK ADD  CONSTRAINT [FK_MaNS_NHAN_SU_BANGCHAMCONG] FOREIGN KEY([MaNS])
REFERENCES [dbo].[NHAN_SU] ([MaNS])
GO
ALTER TABLE [dbo].[BANG_CHAM_CONG] CHECK CONSTRAINT [FK_MaNS_NHAN_SU_BANGCHAMCONG]
GO
ALTER TABLE [dbo].[DU_AN]  WITH CHECK ADD  CONSTRAINT [FK_MaQL] FOREIGN KEY([MaQL])
REFERENCES [dbo].[NHAN_SU] ([MaNS])
GO
ALTER TABLE [dbo].[DU_AN] CHECK CONSTRAINT [FK_MaQL]
GO
ALTER TABLE [dbo].[HOP_DONG]  WITH CHECK ADD  CONSTRAINT [FK_MaNS_NHAN_SU_HOPDONG] FOREIGN KEY([MaNS])
REFERENCES [dbo].[NHAN_SU] ([MaNS])
GO
ALTER TABLE [dbo].[HOP_DONG] CHECK CONSTRAINT [FK_MaNS_NHAN_SU_HOPDONG]
GO
ALTER TABLE [dbo].[LUONG]  WITH CHECK ADD  CONSTRAINT [FK_MaNS_NHAN_SU_LUONG] FOREIGN KEY([MaNS])
REFERENCES [dbo].[NHAN_SU] ([MaNS])
GO
ALTER TABLE [dbo].[LUONG] CHECK CONSTRAINT [FK_MaNS_NHAN_SU_LUONG]
GO
ALTER TABLE [dbo].[NHAN_SU]  WITH CHECK ADD  CONSTRAINT [FK_MaCV_CHUCVU] FOREIGN KEY([MaCV])
REFERENCES [dbo].[CHUC_VU] ([MaCV])
GO
ALTER TABLE [dbo].[NHAN_SU] CHECK CONSTRAINT [FK_MaCV_CHUCVU]
GO
ALTER TABLE [dbo].[NHAN_SU]  WITH CHECK ADD  CONSTRAINT [FK_MaHD_HOPDONG] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOP_DONG] ([MaHD])
GO
ALTER TABLE [dbo].[NHAN_SU] CHECK CONSTRAINT [FK_MaHD_HOPDONG]
GO
ALTER TABLE [dbo].[NHAN_SU]  WITH CHECK ADD  CONSTRAINT [FK_MaPB_PHONGBAN] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PHONG_BAN] ([MaPB])
GO
ALTER TABLE [dbo].[NHAN_SU] CHECK CONSTRAINT [FK_MaPB_PHONGBAN]
GO
ALTER TABLE [dbo].[NHANSU_DUAN]  WITH CHECK ADD  CONSTRAINT [FK_MaDA_DUAN] FOREIGN KEY([MaDA])
REFERENCES [dbo].[DU_AN] ([MaDA])
GO
ALTER TABLE [dbo].[NHANSU_DUAN] CHECK CONSTRAINT [FK_MaDA_DUAN]
GO
ALTER TABLE [dbo].[NHANSU_DUAN]  WITH CHECK ADD  CONSTRAINT [FK_MaNS_NHANSU] FOREIGN KEY([MaNS])
REFERENCES [dbo].[NHAN_SU] ([MaNS])
GO
ALTER TABLE [dbo].[NHANSU_DUAN] CHECK CONSTRAINT [FK_MaNS_NHANSU]
GO
ALTER TABLE [dbo].[NHANSU_KHENTHUONG]  WITH CHECK ADD  CONSTRAINT [FK_MaKT_KHEN_THUONG] FOREIGN KEY([MaKT])
REFERENCES [dbo].[KHEN_THUONG] ([MaKT])
GO
ALTER TABLE [dbo].[NHANSU_KHENTHUONG] CHECK CONSTRAINT [FK_MaKT_KHEN_THUONG]
GO
ALTER TABLE [dbo].[NHANSU_KHENTHUONG]  WITH CHECK ADD  CONSTRAINT [FK_MaNS_NHAN_SU_KHENTHUONG] FOREIGN KEY([MaNS])
REFERENCES [dbo].[NHAN_SU] ([MaNS])
GO
ALTER TABLE [dbo].[NHANSU_KHENTHUONG] CHECK CONSTRAINT [FK_MaNS_NHAN_SU_KHENTHUONG]
GO
ALTER TABLE [dbo].[PHONG_BAN]  WITH CHECK ADD  CONSTRAINT [FK_MaTruongPhong] FOREIGN KEY([MaTruongPhong])
REFERENCES [dbo].[NHAN_SU] ([MaNS])
GO
ALTER TABLE [dbo].[PHONG_BAN] CHECK CONSTRAINT [FK_MaTruongPhong]
GO
ALTER TABLE [dbo].[BANG_CHAM_CONG]  WITH CHECK ADD  CONSTRAINT [CK__BANG_CHAM__SoNga__3B75D760] CHECK  (([SoNgayDiLam]>=(0) AND [SoNgayDiLam]<=(31)))
GO
ALTER TABLE [dbo].[BANG_CHAM_CONG] CHECK CONSTRAINT [CK__BANG_CHAM__SoNga__3B75D760]
GO
ALTER TABLE [dbo].[BANG_CHAM_CONG]  WITH CHECK ADD  CONSTRAINT [CK__BANG_CHAM__SoNga__3C69FB99] CHECK  (([SoNgayNghiCoPhep]>=(0) AND [SoNgayNghiCoPhep]<=(31)))
GO
ALTER TABLE [dbo].[BANG_CHAM_CONG] CHECK CONSTRAINT [CK__BANG_CHAM__SoNga__3C69FB99]
GO
ALTER TABLE [dbo].[BANG_CHAM_CONG]  WITH CHECK ADD  CONSTRAINT [CK__BANG_CHAM__SoNga__3D5E1FD2] CHECK  (([SoNgayNghi]>=(0) AND [SoNgayNghi]<=(31)))
GO
ALTER TABLE [dbo].[BANG_CHAM_CONG] CHECK CONSTRAINT [CK__BANG_CHAM__SoNga__3D5E1FD2]
GO
ALTER TABLE [dbo].[LUONG]  WITH CHECK ADD  CONSTRAINT [CK__LUONG__LuongCoBa__37A5467C] CHECK  (([LuongCoBan]>=(0)))
GO
ALTER TABLE [dbo].[LUONG] CHECK CONSTRAINT [CK__LUONG__LuongCoBa__37A5467C]
GO
ALTER TABLE [dbo].[LUONG]  WITH CHECK ADD  CONSTRAINT [CK__LUONG__PhuCap__36B12243] CHECK  (([PhuCap]>=(0)))
GO
ALTER TABLE [dbo].[LUONG] CHECK CONSTRAINT [CK__LUONG__PhuCap__36B12243]
GO
/****** Object:  StoredProcedure [dbo].[suaBCC]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[suaBCC]
@mans int,
@thang tinyint,
@nam int,
@sndl tinyint,
@snnp tinyint,
@snn tinyint
AS
BEGIN
	UPDATE BANG_CHAM_CONG
	SET SoNgayDiLam=@sndl,
	SoNgayNghiCoPhep=@snnp,
	SoNgayNghi=@snn
	WHERE MaNS=@mans and Thang=@thang and Nam=@nam
END
GO
/****** Object:  StoredProcedure [dbo].[suaDA]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[suaDA]
@mada int,
@ten nvarchar(50),
@TGBD date,
@TGHTDK date,
@maql int
AS
BEGIN
	UPDATE DU_AN
	SET TenDA=@ten,
	TGHTDK=@TGHTDK,
	TGBD=@TGBD,
	MaQL=@maql
	WHERE MaDA=@mada
END
GO
/****** Object:  StoredProcedure [dbo].[suaKT]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[suaKT]
@makt int,
@hinhthuc nvarchar(50),
@ngaykt date,
@giatri decimal,
@noidung nvarchar(100)
AS
BEGIN
	UPDATE KHEN_THUONG
	SET HinhThucKT=@hinhthuc,
	NgayKT=@ngaykt,
	GiaTri=@giatri,
	NoiDung=@noidung
	where MaKT=@makt
END
GO
/****** Object:  StoredProcedure [dbo].[suaPB]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[suaPB]
@mapb int,
@ten nvarchar(100),
@diachi nvarchar(100),
@email char(50),
@sdt char(10),
@matp int
as
begin
	UPDATE PHONG_BAN
	SET TenPB=@ten,
		DiaCHi=@diachi,
		Email=@email,
		SDT=@sdt,
		MaTruongPhong=@matp
	WHERE MaPB=@mapb
end
GO
/****** Object:  StoredProcedure [dbo].[suaTTNS]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[suaTTNS]
@mans int,
@ten nvarchar(50),
@ngaysinh date,
@gioitinh bit,
@quequan nvarchar(100),
@SDT char(10),
@trinhdo nchar(10),
@dantoc nchar(10),
@chuyennganh nvarchar(50),
@quoctich nchar(10),
@diachi nvarchar(100),
@mapb int,
@macv int
as
begin
	UPDATE NHAN_SU
	SET
		Ten=@ten,
		NgaySinh=@ngaysinh,
		GioiTinh=@gioitinh,
		QueQuan=@quequan,
		SDT=@SDT,
		TrinhDo=@trinhdo,
		DanToc=@dantoc,
		ChuyenNganh=@chuyennganh,
		QuocTich=@quoctich,
		DiaChi=@diachi,
		MaPB=@mapb,
		MaCV=@macv
	WHERE MaNS=@mans
end
GO
/****** Object:  StoredProcedure [dbo].[taoKT]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[taoKT]
@hinhthuc nvarchar(50),
@ngaykt date,
@giatri decimal,
@noidung nvarchar(100)
AS
BEGIN
	INSERT INTO KHEN_THUONG(HinhThucKT,NgayKT,GiaTri,NoiDung)
	VALUES(@hinhthuc,@ngaykt,@giatri,@noidung)
END
GO
/****** Object:  StoredProcedure [dbo].[themBCC]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[themBCC]
@mans int,
@thang tinyint,
@nam int,
@sndl tinyint,
@snnp tinyint,
@snn tinyint
AS
BEGIN
	INSERT INTO BANG_CHAM_CONG
	VALUES(@mans,@sndl,@snnp,@snn,@thang,@nam)
END
GO
/****** Object:  StoredProcedure [dbo].[themDA]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[themDA]
@ten nvarchar(50),
@TGBD date,
@TGHTDK date,
@maql int
AS
BEGIN
	insert into DU_AN(TenDA,TGBD,TGHTDK,MaQL)
	VALUES(@ten,@TGBD,@TGHTDK,@maql)
END
GO
/****** Object:  StoredProcedure [dbo].[themNSDA]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[themNSDA]
@mada int,
@mans int
AS
BEGIN
	INSERT INTO NHANSU_DUAN
	VALUES(@mans,@mada)
	--tăng số tv dự án lên 1
	--tăng số thành viên dự án lên 1
	UPDATE DU_AN
	SET SoTV=SoTV+1
	WHERE MaDA=@mada
END
GO
/****** Object:  StoredProcedure [dbo].[themNSKT]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[themNSKT]
@makt int,
@mans int
AS
BEGIN
	INSERT INTO NHANSU_KHENTHUONG
	VALUES(@mans,@makt)
END
GO
/****** Object:  StoredProcedure [dbo].[themNV]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[themNV]
@ten NVARCHAR(50),
@ngaysinh DATE,
@gioitinh bit,
@quequan NVARCHAR(100),
@sdt CHAR(10),
@trinhdo nchar(10),
@dantoc nchar(10),
@chuyennganh nvarchar(50),
@quocgia NCHAR(10),
@diachi nvarchar(100),
@mapb int,
@maCV int
as
begin
	insert into NHAN_SU(Ten,NgaySinh,GioiTinh,QueQuan,SDT,TrinhDo,DanToc,ChuyenNganh,QuocTich,DiaChi,MaPB,MaCV)
	values(
		@ten,@ngaysinh,@gioitinh,@quequan,@sdt,@trinhdo,@dantoc,@chuyennganh,@quocgia,@diachi,@mapb,@maCV
	)
	declare @mans int
	select @mans=max(MaNS)
			from NHAN_SU
	insert into HOP_DONG(LoaiHD,NgayBD,NgayKT,NgayKyHD,MaNS)
	values(
		'','1800-1-1','1800-1-1','1800-1-1',@mans
	)
	insert into LUONG(MaNS)
	values(@mans)
	declare @mahd int
	select @mahd=max(hd.MaHD)
			from HOP_DONG hd
	
	UPDATE NHAN_SU
	SET	MaHD=@mahd
	Where MaNS=@mans
end
GO
/****** Object:  StoredProcedure [dbo].[themPB]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[themPB]
@ten nvarchar(100),
@diachi nvarchar(100),
@email char(50),
@sdt char(10),
@matp int
AS
BEGIN
	INSERT INTO PHONG_BAN(TenPB,DiaCHi,Email,SDT,MaTruongPhong)
	VALUES(@ten,@diachi,@email,@sdt,@matp)
END
GO
/****** Object:  StoredProcedure [dbo].[xemDSDA]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xemDSDA]
AS
BEGIN
	select d.MaDA as [Mã dự án],d.TenDA as [Tên dự án],d.SoTV as [Số thành viên],d.MaQL as [Người quản lý],d.TGBD as [Thời gian bắt đầu],
	d.TGHTDK as [Thời gian HT dự kiến]
	From DU_AN d
END
GO
/****** Object:  StoredProcedure [dbo].[xemDSKT]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xemDSKT]
AS
BEGIN
	Select MaKT as [Mã Khen Thưởng], HinhThucKT as [Hình Thức Khen Thưởng],NgayKT as [Thời gian],
	ROUND(GiaTri,2) as [Giá Trị], NoiDung as [Nội dung]
	from KHEN_THUONG
END
GO
/****** Object:  StoredProcedure [dbo].[xemDSNSDA]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xemDSNSDA]
@mada int
AS
BEGIN
	select ns.MaNS as [Mã thành viên],ns.Ten as [Tên thành viên],ns.NgaySinh as[Ngày Sinh],ns.SDT as[Liên Hệ]
	from NHANSU_DUAN ds join NHAN_SU ns on ds.MaNS=ns.MaNS
	where ds.MaDA=@mada
END
GO
/****** Object:  StoredProcedure [dbo].[xemDSPB]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xemDSPB]
AS
BEGIN
	select MaPB as [Mã Phòng],TenPB as [Tên Phòng Ban],DiaCHi as [Địa Chỉ],Email as [Email],SDT as [Số ĐT],
	[Mã Trưởng phòng]=case When MaTruongPhong is null then 'Empty'
							else CONVERT(Char,MaTruongPhong)
							end
	from PHONG_BAN
END
GO
/****** Object:  StoredProcedure [dbo].[xemDSTTNS]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xemDSTTNS]
AS 
BEGIN
	SELECT ns.MaNS as [Mã Nhân Sự],ns.Ten as [Họ Tên],ns.NgaySinh as [Ngày Sinh],[Giới Tính]= CASE WHEN ns.GioiTinh=1 then N'Nam' ELSE N'Nữ' end,
	ns.SDT as [SĐT],ns.QueQuan as [Quê Quán],ns.DiaChi as [Nơi Ở HT],ns.DanToc as [Dân Tộc],ns.QuocTich as [Quốc Tịch],
	ns.TrinhDo as [Trình Độ],ns.ChuyenNganh as [Chuyên Ngành],
	[Phòng Ban]=CASE WHEN ns.MaPB =null then 'Empty'
			ELSE pb.TenPB
			END,
	ns.MaHD as [Mã Hợp Đồng],
	[Chức Vụ]=CASE WHEN ns.MaCV=null then 'Empty'
			ElSE cv.TenCV
			END,
	'Delete' as [Tùy chọn]
	FROM NHAN_SU ns LEFT JOIN PHONG_BAN pb on ns.MaPB=pb.MaPB LEFT JOIN CHUC_VU cv on ns.MaCV=cv.MaCV LEFT JOIN HOP_DONG hd on ns.MaHD=hd.MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[xemLuongThang]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xemLuongThang]
@thang tinyint,
@nam int
AS
BEGIN
	Select ns.MaNS as [Mã nhân sự],ns.Ten as [Tên],bcc.SoNgayNghi as [Số ngày nghỉ],
	bcc.SoNgayNghiCoPhep as [Số ngày nghỉ có phép],ROUND(l.PhuCap,2) as[Phụ cấp],ROUND(l.LuongCoBan,2) as [Lương cơ bản],
	ROUND(((l.LuongCoBan+l.PhuCap)-(l.LuongCoBan/30)*(bcc.SoNgayNghi-bcc.SoNgayNghiCoPhep)),2) as[Tổng lương]
	From NHAN_SU ns join LUONG l on ns.MaNS=l.MaNS join BANG_CHAM_CONG bcc on ns.MaNS=bcc.MaNS
	WHERE bcc.Thang=@thang and bcc.Nam=@nam
END
GO
/****** Object:  StoredProcedure [dbo].[xemNSKT]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xemNSKT]
@makt int
AS
BEGIN
	select ns.MaNS as [Mã nhân sự],ns.Ten as [Họ Tên], ns.SDT as [Liên hệ],ns.DiaChi as [Địa chỉ]
	from NHANSU_KHENTHUONG kt join NHAN_SU ns on kt.MaNS=ns.MaNS
	WHERE kt.MaKT=@makt
END
GO
/****** Object:  StoredProcedure [dbo].[xoaBCC]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaBCC]
@mans int,
@thang tinyint,
@nam int
AS
BEGIN
	DELETE BANG_CHAM_CONG
	WHERE MaNS=@mans and Thang=@thang and Nam=@nam
END
GO
/****** Object:  StoredProcedure [dbo].[xoaDA]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaDA]
@mada int
AS
BEGIN
	--xóa trên bảng dự án- nhân sự
	DELETE NHANSU_DUAN
	WHERE MaDA=@mada
	--xóa dự án
	DELETE DU_AN
	WHERE MaDA=@mada
END
GO
/****** Object:  StoredProcedure [dbo].[xoaKT]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaKT]
@makt int
AS
BEGIN
	--xóa ở bảng nhân sự khen thưởng
	DELETE NHANSU_KHENTHUONG
	WHERE MaKT=@makt
	--xóa Khen thưởng
	DELETE KHEN_THUONG
	WHERE MaKT=@makt
END
GO
/****** Object:  StoredProcedure [dbo].[xoaNS]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaNS]
@mans int
AS
BEGIN
	--set Null trên trường mã hợp đồng của nhân sự
	UPDATE NHAN_SU
	SET MaHD=null
	WHERE MaNS=@mans
	--xóa bản hợp đồng của nhân sự đó
	DELETE HOP_DONG
	WHERE MaNS=@mans
	--xóa khen thưởng
	DELETE NHANSU_KHENTHUONG
	WHERE MaNS=@mans
	--xóa nhân sự dự án
	DELETE NHANSU_DUAN
	WHERE MaNS=@mans
	--Set null cho mã quản lý dự án của dự án có quản lý là nhân sự đó
	UPDATE DU_AN
	SET MaQL=null
	where MaQL=@mans
	--Set null cho mã trưởng phòng của phòng ban có TP là nhân sự đó
	UPDATE PHONG_BAN
	SET MaTruongPhong=null
	WHERE MaTruongPhong=@mans
	--Xóa các bảng chấm công của nhân sự
	DELETE BANG_CHAM_CONG
	WHERE MaNS=@mans
	--Xóa các bảng lương của nhân sự
	DELETE LUONG
	WHERE MaNS=@mans
	--xóa nhân sự
	DELETE NHAN_SU
	WHERE MaNS=@mans
END
GO
/****** Object:  StoredProcedure [dbo].[xoaNSDA]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaNSDA]
@mada int,
@mans int
AS
BEGIN
	DELETE NHANSU_DUAN
	WHERE MaDA=@mada and MaNS=@mans
	--giảm số tv dự án lên 1
	UPDATE DU_AN
	SET SoTV=SoTV-1
	WHERE MaDA=@mada
END
GO
/****** Object:  StoredProcedure [dbo].[xoaNSKT]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaNSKT]
@makt int,
@mans int
AS
BEGIN
	DELETE NHANSU_KHENTHUONG
	WHERE MaKT=@makt and MaNS=@mans
END
GO
/****** Object:  StoredProcedure [dbo].[xoaPB]    Script Date: 5/11/2021 1:33:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaPB]
@mapb int
AS
BEGIN
	--set null mã phòng ban cho những nhân viên thuộc phòng ban này
	UPDATE NHAN_SU
	SET MaPB=null
	WHERE MaPB=@mapb
	--xóa phòng ban
	DELETE PHONG_BAN
	WHERE MaPB=@mapb
END
GO
USE [master]
GO
ALTER DATABASE [QLNS] SET  READ_WRITE 
GO

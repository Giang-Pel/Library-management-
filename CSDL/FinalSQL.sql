USE [QLTV]
GO
/****** Object:  User [aaa]    Script Date: 7/4/2019 8:05:53 PM ******/
CREATE USER [aaa] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [aaa]
GO
/****** Object:  Table [dbo].[ChiTietMuon]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietMuon](
	[MaPM] [char](10) NOT NULL,
	[MaCS] [char](15) NOT NULL,
	[TinhTrang] [nvarchar](20) NULL,
 CONSTRAINT [PK_ChiTietMuon] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC,
	[MaCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietNhap]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhap](
	[MaPN] [char](10) NOT NULL,
	[MaTS] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuonSach]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuonSach](
	[MaCS] [char](15) NOT NULL,
	[MaTS] [varchar](10) NOT NULL,
 CONSTRAINT [PK__CuonSach__B235742D9CA18FE1] PRIMARY KEY CLUSTERED 
(
	[MaCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDG] [char](10) NOT NULL,
	[TenDG] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nchar](5) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](15) NULL,
	[Matkhau] [varchar](50) NULL,
	[LoaiDocGia] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeSach]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeSach](
	[MaKe] [char](10) NOT NULL,
	[ChatLieu] [nvarchar](30) NULL,
	[SucChua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[MaNCC] [char](10) NOT NULL,
	[TenNCC] [nvarchar](30) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NULL,
	[Email] [nchar](40) NULL,
 CONSTRAINT [PK__NCC__3A185DEB79758A68] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[MaNXB] [char](10) NOT NULL,
	[TenNXB] [nchar](30) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](15) NULL,
	[Email] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaPM] [char](10) NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[MaDG] [char](10) NOT NULL,
	[MaTT] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [char](10) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[MaTT] [char](10) NOT NULL,
	[MaNCC] [char](10) NOT NULL,
	[TongTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [char](10) NOT NULL,
	[TenTG] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nchar](5) NULL,
	[QueQuan] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuThu]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuThu](
	[MaTT] [char](10) NOT NULL,
	[TenTT] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nchar](5) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](15) NULL,
	[Chucvu] [nvarchar](30) NULL,
	[MatKhau] [varchar](50) NULL,
 CONSTRAINT [PK_ThuThu] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuaSach]    Script Date: 7/4/2019 8:05:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuaSach](
	[MaTS] [varchar](10) NOT NULL,
	[TenTS] [nvarchar](50) NOT NULL,
	[NamXB] [int] NULL,
	[TheLoai] [nvarchar](30) NULL,
	[MaNXB] [char](10) NULL,
	[MaKe] [char](10) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK__TuaSach__27250078A777EB3F] PRIMARY KEY CLUSTERED 
(
	[MaTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viet]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viet](
	[MaTS] [varchar](10) NOT NULL,
	[MaTG] [char](10) NOT NULL,
	[SoTrang] [int] NULL,
 CONSTRAINT [PK_Viet] PRIMARY KEY CLUSTERED 
(
	[MaTS] ASC,
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM001     ', N'TS001_012      ', N'Tốt')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM001     ', N'TS005_011      ', N'Cũ')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM001     ', N'TS007_012      ', N'Cũ')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM002     ', N'TS001_020      ', N'Tốt')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM003     ', N'TS004_011      ', N'Tốt')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM004     ', N'TS004_003      ', N'Cũ')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM005     ', N'TS001_011      ', N'Tốt')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM006     ', N'TS004_010      ', N'Tốt')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM007     ', N'TS007_009      ', N'Tốt')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM008     ', N'TS013_008      ', N'Tốt')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM009     ', N'TS013_003      ', N'Cũ')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM123     ', N'TS013_007      ', N'Tốt')
INSERT [dbo].[ChiTietMuon] ([MaPM], [MaCS], [TinhTrang]) VALUES (N'PM987     ', N'TS020_011      ', N'Tốt')
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PM123     ', N'TS020     ', 2, 12000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN001     ', N'TS001     ', 50, 12000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN001     ', N'TS004     ', 10, 13400)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN002     ', N'TS001     ', 10, 12500)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN002     ', N'TS011     ', 50, 13000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN003     ', N'TS013     ', 50, 14000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN004     ', N'TS001     ', 13, 12500)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN004     ', N'TS004     ', 50, 15000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN005     ', N'TS005     ', 50, 16000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN006     ', N'TS016     ', 50, 17000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN007     ', N'TS007     ', 50, 18000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN008     ', N'TS018     ', 50, 19000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN009     ', N'TS020     ', 50, 20000)
INSERT [dbo].[ChiTietNhap] ([MaPN], [MaTS], [SoLuong], [DonGia]) VALUES (N'PN678     ', N'TS013     ', 2, 12000)
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_001      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_002      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_003      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_004      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_005      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_006      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_007      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_008      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_009      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_010      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_011      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_012      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_013      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_014      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_015      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_016      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_017      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_018      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_019      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS001_020      ', N'TS001     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_001      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_002      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_003      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_004      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_005      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_006      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_007      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_008      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_009      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_010      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_011      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_012      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_013      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_014      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_015      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_016      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_017      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_018      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_019      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_020      ', N'TS004     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_021      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_022      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_023      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_024      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_025      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_026      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_027      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_028      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_029      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_030      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS004_031      ', N'TS004')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_001      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_002      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_003      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_004      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_005      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_006      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_007      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_008      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_009      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_010      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS005_011      ', N'TS005     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_001      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_002      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_003      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_004      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_005      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_006      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_007      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_008      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_009      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_010      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_011      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS007_012      ', N'TS007     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_001      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_002      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_003      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_004      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_005      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_006      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_007      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_008      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_009      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_010      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_011      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_012      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_013      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_014      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_015      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_016      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_017      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_018      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_019      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS011_020      ', N'TS011     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_001      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_002      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_003      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_004      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_005      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_006      ', N'TS013     ')
GO
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_007      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_008      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_009      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_010      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_011      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_012      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_013      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_014      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_015      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_016      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_017      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_018      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_019      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_020      ', N'TS013     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_021      ', N'TS013')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS013_022      ', N'TS013')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_001      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_002      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_003      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_004      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_005      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_006      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_007      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_008      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_009      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_010      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_011      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_012      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_013      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_014      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_015      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_016      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_017      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_018      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_019      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS014_020      ', N'TS014     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_001      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_002      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_003      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_004      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_005      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_006      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_007      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_008      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_009      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_010      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_011      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_012      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_013      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_014      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_015      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_016      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_017      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_018      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_019      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS018_020      ', N'TS018     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_001      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_002      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_003      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_004      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_005      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_006      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_007      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_008      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_009      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_010      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_011      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_012      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_013      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_014      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_015      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_016      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_017      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_018      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_019      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS019_020      ', N'TS019     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_001      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_002      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_003      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_004      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_005      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_006      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_007      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_008      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_009      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_010      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_011      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_012      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_013      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_014      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_015      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_016      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_017      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_018      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_019      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_020      ', N'TS020     ')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_021      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_022      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_023      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_024      ', N'TS020')
GO
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_025      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_026      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_027      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_028      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_029      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_030      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_031      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_032      ', N'TS020')
INSERT [dbo].[CuonSach] ([MaCS], [MaTS]) VALUES (N'TS020_033      ', N'TS020')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'12345678  ', N'Nguyễn Văn B', CAST(N'1992-05-12' AS Date), N'Nam  ', N'Bình Định', N'0123456789     ', N'', N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150001  ', N'Nguyễn Duy Nam Anh', CAST(N'2000-07-04' AS Date), N'Nam  ', N'Hà Đông-Hà Nội', N'01677773333    ', N'', N'Y')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150002  ', N'Nguyễn Anh Tuấn', CAST(N'2002-07-07' AS Date), N'Nam  ', N'Yên Mô-NinhBinh', N'01688906495    ', N'', N'Y')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150003  ', N'Đỗ Văn Mạnh', CAST(N'1995-02-09' AS Date), N'Nam  ', N'Quảng Yên - Quảng Ninh', N'01666888999    ', N'', N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150004  ', N'Nguyễn Văn Bằng', CAST(N'2002-07-07' AS Date), N'Nam  ', N'Cà Mau', N'               ', N'', N'Y')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150005  ', N'Chu Việt Cường', CAST(N'1995-11-11' AS Date), N'Nam  ', N'Cao Bằng', NULL, NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150006  ', N'Dương Văn Nam', CAST(N'1995-08-08' AS Date), N'Nam  ', N'Hà Nội', NULL, NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150007  ', N'Phan Phương Thúy', CAST(N'1994-12-12' AS Date), N'Nữ   ', N'Tuyên Quang', N'01232333444    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150008  ', N'Bùi Thị Xuân', CAST(N'1995-03-20' AS Date), N'Nữ   ', N'Hà Nội', N'0982432234     ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150009  ', N'Phạm Thu Thảo', CAST(N'1995-04-05' AS Date), N'Nữ   ', N'Hải Dương', NULL, NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'13150010  ', N'Trần Đại Dũng', CAST(N'1995-09-12' AS Date), N'Nam  ', N'Hưng Yên', NULL, NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150001  ', N'Nguyễn Đức Mạnh', CAST(N'1996-04-19' AS Date), N'Nam  ', N'Quế Võ-Bắc Ninh', N'01627998425    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150002  ', N'Nguyễn Hải Ninh', CAST(N'1992-09-19' AS Date), N'Nam  ', N'Quế Võ-Bắc Ninh', N'01636571234    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150003  ', N'Vũ Viết Phúc', CAST(N'1996-07-19' AS Date), N'Nam  ', N'Gia Bình-Bắc Ninh', N'01656748321    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150004  ', N'Nguyễn Tùng Lâm', CAST(N'1996-01-19' AS Date), N'Nam  ', N'Gia Lâm-Hà Nội', N'01698218728    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150005  ', N'Nguyễn Đức Ninh', CAST(N'1996-07-19' AS Date), N'Nam  ', N'Lương Tài-Bắc Ninh', N'01623453453    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150006  ', N'Phan Kim Liên', CAST(N'1994-04-19' AS Date), N'Nữ   ', N'Lập Thạch-Vĩnh Phúc', N'01628765212    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150007  ', N'Ngô Thùy Dung', CAST(N'1993-01-28' AS Date), N'Nữ   ', N'Nghị Lộc-Thanh Hóa', N'01659876253    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150008  ', N'Nguyễn Thị Lan Anh', CAST(N'1996-04-19' AS Date), N'Nữ   ', N'Khoái Châu-Hưng Yên', N'01623657382    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150009  ', N'Nguyễn Đức Thiện', CAST(N'1990-03-20' AS Date), N'Nam  ', N'SaPa-Lào Cai', N'01637165234    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'14150010  ', N'Nguyễn Đức Mạnh', CAST(N'1996-01-29' AS Date), N'Nam  ', N'Nghi Xuân-Thanh Hóa', N'01672132131    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150001  ', N'Trần Thị Phương', CAST(N'2002-07-07' AS Date), N'Nữ   ', N'Thái Bình', N'0988123121     ', NULL, N'Y')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150002  ', N'Nguyễn Văn Dũng', CAST(N'1995-08-17' AS Date), N'Nam  ', N'Hưng Yên', N'0984254730     ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150003  ', N'Lã Tiến Thành', CAST(N'1997-06-19' AS Date), N'Nam  ', N'Hà Nội', N'0967897567     ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150004  ', N'Đỗ Ngọc Mai', CAST(N'1996-11-06' AS Date), N'Nữ   ', N'Hà Nội', N'0987541123     ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150005  ', N'Nguyễn Thị Thu Phương', CAST(N'1997-12-21' AS Date), N'Nữ   ', N'Hà Nam', NULL, NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150006  ', N'Phan Thu Trang', CAST(N'1997-11-23' AS Date), N'Nữ   ', N'Thanh Hóa', NULL, NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150007  ', N'Lại Hải Đăng', CAST(N'1997-07-21' AS Date), N'Nam  ', N'Nghệ An', N'01678432190    ', NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150008  ', N'Kiều Bá Luyến', CAST(N'1996-02-18' AS Date), N'Nam  ', N'Nha Trang-Khánh Hòa', NULL, NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'15150009  ', N'Nguyễn Sơn Lâm', CAST(N'1997-07-25' AS Date), N'Nam  ', N'TP HCM', NULL, NULL, N'X')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'16520063  ', N'Vũ Thị Lan Anh', CAST(N'2001-10-02' AS Date), N'Nữ   ', N'Thanh Hóa', N'               ', N'', N'Y')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Matkhau], [LoaiDocGia]) VALUES (N'16520320  ', N'Trương Thị Giang', CAST(N'1998-03-14' AS Date), N'Nữ   ', N'Thanh Hóa', N'0356727893     ', N'1', N'X')
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke001     ', N'Gỗ', 1000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke002     ', N'Gỗ', 1000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke003     ', N'Thép', 1000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke004     ', N'Thép', 1000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke005     ', N'Thép', 1000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke006     ', N'Thép', 1000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke007     ', N'Gỗ, Thép', 2000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke008     ', N'Inox', 2000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke009     ', N'Inox', 2000)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke010     ', N'Gỗ', 1500)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke011     ', N'Thép', 1200)
INSERT [dbo].[KeSach] ([MaKe], [ChatLieu], [SucChua]) VALUES (N'Ke012     ', N'gỗ', 1500)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC001    ', N'Hồng Hà', N'Hà Nội', N'0419972837   ', N'hongha67856@gmail.com                   ')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC002    ', N'Thanh Long', N'Hà Nội', N'02418765433  ', N'thanhlong@tdg.vn                        ')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC003    ', N'Bạch Hổ', N'Hà Nam', N'0435682121   ', N'bachho11@hotrang.com                    ')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC004    ', N'Chu Tước', N'TP Hồ Chí Minh', N'0497453234   ', N'hcmcity@hcm.com                         ')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC005    ', N'Huyền Vũ', NULL, N'0412312392   ', N'huyenvu@kingtom.com                     ')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC006    ', N'Thiên Long', N'Đà Nẵng', N'02418721532  ', N'thienlong@batbo.con.vn                  ')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC007    ', N'Nam Hồng', N'Hà Nam', N'04218549632  ', N'namhong123@gmail.com                    ')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC008    ', N'Giáo Dục', N'Hà Nội', N'0419972837   ', NULL)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC009    ', N'Tuổi Trẻ', N'Hà Nội', N'02418765433  ', NULL)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC010    ', N'ĐH QG HN', N'Hà Nội', N'0435682121   ', NULL)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC011    ', N'Vì Sinh vien', NULL, N'0497453234   ', NULL)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC012    ', N'Học viện KTQS', N'Hà Nội', N'0412312392   ', NULL)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC013    ', N'Minh Huy', NULL, N'02418721532  ', NULL)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC014    ', N'Lazada', N'Hà Nội', N'04218549632  ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB001    ', N'Giáo Dục Việt Nam          ', N'Hà Nội', N'8220647        ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB002    ', N'Kim Đồng                     ', N'Hà Nội', N'9439001        ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB003    ', N'ĐH QG HN                      ', N'Hà Nội', N' 9714899       ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB004    ', N'Thanh Niên                    ', N'Hà Nội', N'9434044        ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB005    ', N'Tuổi Trẻ                    ', N'Hà Nội', NULL, NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB006    ', N'TP HCM                        ', NULL, NULL, NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB007    ', N'Tri Thức                      ', N'Hà Nội', NULL, NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB008    ', N'Thống Kê                      ', N'Hà Nội', N'8457290        ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB009    ', N'Chính Trị Quốc gia            ', N'Hà Nội', N'0903216556     ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB010    ', N'Lao Động                      ', N'Hà Nội', N'8515381        ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB011    ', N'Nghệ An                       ', N'Nghệ An', N'038840560      ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB012    ', N'Phương Đông                   ', N'Cà Mau', NULL, NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB013    ', N'Văn hóa Sài Gòn               ', N'TP HCM', NULL, NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB014    ', N'Hải Phòng                     ', N'Hải Phòng', N'031845970      ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB015    ', N'ĐH Kinh tế Quốc dân           ', N'Hà Nội', N'8694937        ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB016    ', N'ĐH QG Tp HCM                  ', N'TP HCM', NULL, NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB017    ', N'Công an Nhân dân              ', N'Hà Nội', N'06942969       ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB018    ', N'Trẻ                           ', N'Hà Nội', N'089316211      ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB019    ', N'Văn hóa Dân tộc               ', N'Hà Nội', N'8263070        ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB020    ', N'Y Học                         ', N'Hà Nội', N'7625922        ', NULL)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SDT], [Email]) VALUES (N'NXB021    ', N'Học Viện KTQS                 ', N'Hà Nội', N'43834832       ', N'                                                  ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM001     ', CAST(N'2016-09-09' AS Date), CAST(N'2016-12-31' AS Date), N'14150003  ', N'TT001     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM002     ', CAST(N'2016-01-15' AS Date), CAST(N'2106-07-11' AS Date), N'14150005  ', N'TT001     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM003     ', CAST(N'2016-11-25' AS Date), CAST(N'2016-12-25' AS Date), N'13150005  ', N'TT003     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM004     ', CAST(N'2016-07-18' AS Date), CAST(N'2016-12-31' AS Date), N'14150010  ', N'TT004     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM005     ', CAST(N'2016-08-12' AS Date), CAST(N'2016-08-12' AS Date), N'14150001  ', N'TT004     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM006     ', CAST(N'2016-03-25' AS Date), CAST(N'2016-09-25' AS Date), N'15150005  ', N'TT001     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM007     ', CAST(N'2016-03-17' AS Date), CAST(N'2016-09-17' AS Date), N'15150002  ', N'TT004     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM008     ', CAST(N'2016-05-25' AS Date), CAST(N'2016-11-25' AS Date), N'14150003  ', N'TT001     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM009     ', CAST(N'2016-05-15' AS Date), CAST(N'2016-11-15' AS Date), N'13150003  ', N'TT003     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM010     ', CAST(N'2016-06-30' AS Date), CAST(N'2016-12-30' AS Date), N'14150007  ', N'TT004     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM123     ', CAST(N'2016-12-05' AS Date), CAST(N'2016-12-24' AS Date), N'14150004  ', N'TT003     ')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayMuon], [NgayTra], [MaDG], [MaTT]) VALUES (N'PM987     ', CAST(N'2016-12-08' AS Date), CAST(N'2016-12-31' AS Date), N'15150003  ', N'TT003     ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PM123     ', CAST(N'2016-11-12' AS Date), N'TT005     ', N'NCC011    ', 24000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN001     ', CAST(N'2016-04-12' AS Date), N'TT001     ', N'NCC001    ', 734000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN002     ', CAST(N'2016-07-02' AS Date), N'TT002     ', N'NCC003    ', 775000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN003     ', CAST(N'2016-10-20' AS Date), N'TT003     ', N'NCC003    ', 700000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN004     ', CAST(N'2016-03-15' AS Date), N'TT004     ', N'NCC010    ', 912500.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN005     ', CAST(N'2016-12-11' AS Date), N'TT005     ', N'NCC005    ', 800000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN006     ', CAST(N'2016-03-05' AS Date), N'TT005     ', N'NCC013    ', 850000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN007     ', CAST(N'2016-08-25' AS Date), N'TT004     ', N'NCC005    ', 900000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN008     ', CAST(N'2016-09-02' AS Date), N'TT003     ', N'NCC004    ', 950000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN009     ', CAST(N'2016-10-27' AS Date), N'TT002     ', N'NCC003    ', 1000000.0000)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayLap], [MaTT], [MaNCC], [TongTien]) VALUES (N'PN678     ', CAST(N'2016-11-12' AS Date), N'TT004     ', N'NCC010    ', 24000.0000)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG001     ', N'Xuân Diệu', CAST(N'1953-12-09' AS Date), N'Nam  ', N'Cẩm Giàng-Hải Dương')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG002     ', N'Xuân Mai', CAST(N'1963-11-09' AS Date), N'Nữ   ', N'Quế Võ-Bắc Ninh')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG003     ', N'Nguyễn Đình Phúc', CAST(N'1945-10-19' AS Date), N'Nam  ', N'Lương Tài-Bắc Ninh')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG004     ', N'Văn Cao', CAST(N'1953-12-09' AS Date), N'Nam  ', N'Thọ Xuân-Thanh Hóa')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG005     ', N'Chế Lan Viên', CAST(N'1934-04-18' AS Date), N'Nam  ', N'Khoái Châu-Hưng Yên')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG006     ', N'Võ Trọng Phụng', CAST(N'1935-03-03' AS Date), N'Nam  ', N'Yên Phong-Bắc Ninh')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG007     ', N'Thành Vũ', CAST(N'1927-12-12' AS Date), N'Nam  ', N'Từ Sơn-Bắc Ninh')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG008     ', N'Thành Nam', CAST(N'1913-12-10' AS Date), N'Nam  ', N'Vĩnh Yên-Vĩnh Phúc')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG009     ', N'Xuân Quỳnh', CAST(N'1943-12-11' AS Date), N'Nữ   ', N'Lập Thạch-Vĩnh Phúc')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG010     ', N'Quang Lân', CAST(N'1953-12-12' AS Date), N'Nam  ', N'Nghị Lộc -Thanh Hóa')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG011     ', N'Nguyễn Nhật Ánh', CAST(N'1955-05-07' AS Date), N'Nam  ', N'Quảng Nam')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG012     ', N'Lep-ton-xtoi', CAST(N'1910-11-20' AS Date), N'Nam  ', N'Nga')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG013     ', N'Hồ Chí Minh', CAST(N'1890-05-19' AS Date), N'Nam  ', N'Nghệ An')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG014     ', N'Nam Cao', CAST(N'1917-10-29' AS Date), N'Nam  ', N'Hà Nam')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG015     ', N'Tô Hoài', CAST(N'1920-09-27' AS Date), N'Nam  ', N'Hà Đông(cũ)')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG016     ', N'Nguyễn Bá Tường', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG017     ', N'Nguyễn Kim Anh', NULL, N'Nữ   ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG018     ', N'Nguyễn Tuệ', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG019     ', N'Robert D. Edwards', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG021     ', N'R. Elmasri ', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG022     ', N'Raghu Ramakrisnman', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG023     ', N'Eldad Eilam', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG024     ', N'A.J. Frost', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG025     ', N'Erik Brown', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG026     ', N'Mark Lutz', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG027     ', N'O''Henry', NULL, N'Nam  ', NULL)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [NgaySinh], [GioiTinh], [QueQuan]) VALUES (N'TG028     ', N'Ngô Tất Tố', NULL, N'Nam  ', NULL)
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT000     ', N'Trương Thị Giang', CAST(N'1998-03-14' AS Date), N'Nữ   ', N'Thanh Hóa', N'0356727893     ', NULL, N'1')
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT001     ', N'Nguyễn Minh Triết', CAST(N'1992-12-12' AS Date), N'Nam  ', N'TP. Hồ Chí Minh', N'012156123213   ', N'', N'abc')
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT002     ', N'Nguyễn Thị Na', CAST(N'1993-08-18' AS Date), N'Nữ   ', N'Đồng Nai', N'01624531234    ', N'', N'123')
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT003     ', N'Ngô Thị Lan', CAST(N'1996-04-19' AS Date), N'Nữ   ', N'Đồng Nai', N'01234567891    ', N'', N'a')
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT004     ', N'Nguyễn Thành Long', CAST(N'1996-03-28' AS Date), N'Nam  ', N'Bình Thuận', N'01237651234    ', N'', N'b')
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT005     ', N'Lê Hà My', CAST(N'1990-10-11' AS Date), N'Nữ   ', N'Khánh Hòa', N'01652123131    ', N'', N'c')
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT006     ', N'Vũ Thị Lan Anh', CAST(N'1998-02-10' AS Date), N'Nữ   ', N'Ninh Bình', NULL, NULL, N'd')
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT007     ', N'Vũ Thị Nguyệt Nga', CAST(N'2019-06-30' AS Date), N'Nữ   ', N'Nam Định', N'               ', N'', N'1')
INSERT [dbo].[ThuThu] ([MaTT], [TenTT], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Chucvu], [MatKhau]) VALUES (N'TT008     ', N'Đỗ Thế Đức', CAST(N'1998-03-03' AS Date), N'Nam  ', N'Hải Dương', N'               ', N'', N'')
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS001     ', N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 1969, N'Truyện', N'NXB001    ', N'Ke001     ', 20)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS002     ', N'Vẫn Cứ Thích Em', 1976, N'Truyện', N'NXB002    ', N'Ke004     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS003     ', N'Yêu Em Từ Cái Nhìn Đầu Tiên', 1945, N'Ngôn Tình', N'NXB001    ', N'Ke010     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS004     ', N'Tắt Đèn', 1974, N'Truyện', N'NXB004    ', N'Ke001     ', 31)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS005     ', N'Cô Gái Năm Âý Chúng Ta Cùng Theo Đuổi', 1979, N'Truyện', N'NXB005    ', N'Ke002     ', 11)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS006     ', N'Chàng Trai Năm Âý', 2006, N'Truyện', N'NXB010    ', N'Ke004     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS007     ', N'Ngày Trôi Về Phía Cũ', 1978, N'Truyện', N'NXB007    ', N'Ke005     ', 12)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS008     ', N'Chiêc Lá Cuối Cùng', 1993, N'Truyện', N'NXB008    ', N'Ke009     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS009     ', N'Chí Phèo', 1948, N'Truyện', N'NXB001    ', N'Ke008     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS010     ', N'Lão Hạc', 1954, N'Truyện', N'NXB010    ', N'Ke002     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS011     ', N'Nhật ký trong tù', NULL, N'Nhật ký', N'NXB001    ', N'Ke003     ', 20)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS012     ', N'Code Complete 2', NULL, NULL, N'NXB002    ', N'Ke006     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS013     ', N'Lý thuyết cơ sở dữ liệu', NULL, NULL, N'NXB001    ', N'Ke007     ', 22)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS014     ', N'Giáo Trình Nhập Môn Hệ Cơ Sở dữ liệu', NULL, NULL, N'NXB021    ', N'Ke007     ', 20)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS015     ', N'Nguyên lý các hệ cơ sở dữ liệu', NULL, NULL, N'NXB021    ', N'Ke006     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS016     ', N'Reversing secrets of reverse engineering', NULL, NULL, N'NXB005    ', N'Ke006     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS017     ', N'Database Management Systems ', NULL, NULL, N'NXB005    ', N'Ke006     ', 0)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS018     ', N' Fundamentals of Database Systems ', NULL, NULL, N'NXB001    ', N'Ke011     ', 20)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS019     ', N'Windowsforms programming With C#', NULL, NULL, N'NXB001    ', N'Ke011     ', 20)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS020     ', N'Python pocket reference', NULL, NULL, N'NXB001    ', N'Ke007     ', 33)
INSERT [dbo].[TuaSach] ([MaTS], [TenTS], [NamXB], [TheLoai], [MaNXB], [MaKe], [SoLuong]) VALUES (N'TS021     ', N'Nhập môn lập trình', 1969, N'Lập trình', N'NXB001    ', N'Ke001     ', 20)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS001     ', N'TG011     ', 150)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS002     ', N'TG007     ', 200)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS003     ', N'TG008     ', 250)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS004     ', N'TG028     ', 150)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS005     ', N'TG003     ', 100)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS006     ', N'TG003     ', 154)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS007     ', N'TG007     ', 155)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS008     ', N'TG027     ', 156)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS009     ', N'TG014     ', 152)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS010     ', N'TG014     ', 153)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS011     ', N'TG013     ', 150)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS012     ', N'TG021     ', 200)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS013     ', N'TG016     ', 250)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS014     ', N'TG018     ', 150)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS015     ', N'TG017     ', 100)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS016     ', N'TG023     ', 154)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS017     ', N'TG022     ', 155)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS018     ', N'TG021     ', 156)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS019     ', N'TG025     ', 198)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS020     ', N'TG025     ', 245)
INSERT [dbo].[Viet] ([MaTS], [MaTG], [SoTrang]) VALUES (N'TS021     ', N'TG024     ', 150)
ALTER TABLE [dbo].[ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietMuon_CuonSach_MaSach] FOREIGN KEY([MaCS])
REFERENCES [dbo].[CuonSach] ([MaCS])
GO
ALTER TABLE [dbo].[ChiTietMuon] CHECK CONSTRAINT [FK_ChiTietMuon_CuonSach_MaSach]
GO
ALTER TABLE [dbo].[ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietMuon_PhieuMuon_MaPM] FOREIGN KEY([MaPM])
REFERENCES [dbo].[PhieuMuon] ([MaPM])
GO
ALTER TABLE [dbo].[ChiTietMuon] CHECK CONSTRAINT [FK_ChiTietMuon_PhieuMuon_MaPM]
GO
ALTER TABLE [dbo].[ChiTietNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhap_PhieuNhap_MaPN] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietNhap] CHECK CONSTRAINT [FK_ChiTietNhap_PhieuNhap_MaPN]
GO
ALTER TABLE [dbo].[ChiTietNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhap_TuaSach_MaTS] FOREIGN KEY([MaTS])
REFERENCES [dbo].[TuaSach] ([MaTS])
GO
ALTER TABLE [dbo].[ChiTietNhap] CHECK CONSTRAINT [FK_ChiTietNhap_TuaSach_MaTS]
GO
ALTER TABLE [dbo].[CuonSach]  WITH CHECK ADD  CONSTRAINT [FK_CuonSach_TuaSach_MaTS] FOREIGN KEY([MaTS])
REFERENCES [dbo].[TuaSach] ([MaTS])
GO
ALTER TABLE [dbo].[CuonSach] CHECK CONSTRAINT [FK_CuonSach_TuaSach_MaTS]
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_DocGia_MaDG] FOREIGN KEY([MaDG])
REFERENCES [dbo].[DocGia] ([MaDG])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_DocGia_MaDG]
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_ThuThu_MaTT] FOREIGN KEY([MaTT])
REFERENCES [dbo].[ThuThu] ([MaTT])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_ThuThu_MaTT]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NCC_MaNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NCC_MaNCC]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_ThuThu_MaTT] FOREIGN KEY([MaTT])
REFERENCES [dbo].[ThuThu] ([MaTT])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_ThuThu_MaTT]
GO
ALTER TABLE [dbo].[TuaSach]  WITH CHECK ADD  CONSTRAINT [FK_TuaSach_KeSach_MaKe] FOREIGN KEY([MaKe])
REFERENCES [dbo].[KeSach] ([MaKe])
GO
ALTER TABLE [dbo].[TuaSach] CHECK CONSTRAINT [FK_TuaSach_KeSach_MaKe]
GO
ALTER TABLE [dbo].[TuaSach]  WITH CHECK ADD  CONSTRAINT [FK_TuaSach_NXB_MaNXB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NXB] ([MaNXB])
GO
ALTER TABLE [dbo].[TuaSach] CHECK CONSTRAINT [FK_TuaSach_NXB_MaNXB]
GO
ALTER TABLE [dbo].[Viet]  WITH CHECK ADD  CONSTRAINT [FK_Viet_TuaSach_MaTG] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
ALTER TABLE [dbo].[Viet] CHECK CONSTRAINT [FK_Viet_TuaSach_MaTG]
GO
ALTER TABLE [dbo].[Viet]  WITH CHECK ADD  CONSTRAINT [FK_Viet_TuaSach_MaTS] FOREIGN KEY([MaTS])
REFERENCES [dbo].[TuaSach] ([MaTS])
GO
ALTER TABLE [dbo].[Viet] CHECK CONSTRAINT [FK_Viet_TuaSach_MaTS]
GO
ALTER TABLE [dbo].[ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [CK__ChiTietMu__TinhT__35BCFE0A] CHECK  (([TinhTrang]=N'Cũ' OR [TinhTrang]=N'Tốt'))
GO
ALTER TABLE [dbo].[ChiTietMuon] CHECK CONSTRAINT [CK__ChiTietMu__TinhT__35BCFE0A]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[TacGia]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[ThuThu]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
/****** Object:  StoredProcedure [dbo].[Delete_CS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_CS](@macs char(10))
as
begin
delete CuonSach
where MaSach=@macs
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_CTM]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Delete_CTM](@mapm char(10),@macs char(10))
as
begin
	delete ChiTietMuon
	where MaPM=@mapm and MaCS=@macs
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_CTN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_CTN](@MaPN char(10))
as
begin
delete ChiTietNhap
where MaPN=@MaPN
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_DG]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_DG](@madg char(10))
as
begin
	delete DocGia
	where maDG=@madg
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_KeSach]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[Delete_KeSach](@make char(10))
 as
 delete KeSach
 where MaKe=@make
---------------NXB--------------------------
GO
/****** Object:  StoredProcedure [dbo].[Delete_NCC]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_NCC](@mancc char(10))
as
begin
delete NCC
where maNCC=@mancc
end		
GO
/****** Object:  StoredProcedure [dbo].[Delete_NXB]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_NXB](@manxb char(10))
as
begin
delete NXB
where maNXB=@manxb
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_PM]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Delete_PM](@mapm char(10))
as
begin
	delete PhieuMuon
	where MaPM=@mapm
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_PN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_PN](@MaPN char(10))
as
begin
delete PhieuNhap
where MaPN=@MaPN
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_SCN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_SCN](@tensach nvarchar(50))
as
begin
delete SachCN
where tenSach=@tensach
end        	
GO
/****** Object:  StoredProcedure [dbo].[Delete_TG]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_TG](@matg char(10))
as
begin
delete TacGia
where maTG=@matg
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_TS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_TS](@mats char(10))
as
begin
delete TuaSach
where maTS=@mats
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_TT]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_TT](@matt char(10))
as
begin
	delete ThuThu
	where maTT=@matt
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_V]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_V](@mats char(10),@matg char(10))
as
begin
delete Viet
where maTS=@mats and maTG=@matg
end
GO
/****** Object:  StoredProcedure [dbo].[Get_TS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Get_TS]
as
begin
declare @i  int
declare @ts varchar(10)
declare @j  int =1
declare @k int
declare @mats varchar(5)
declare @mm	varchar(15)
set @i=10
select @mats= MaTS from TuaSach where MaTS='TS002'
select @ts= MaCS from (select top 1 MaCS from CuonSach where MaTS = 'TS001' order by MaCS DESC ) as A
set @k=	convert( int,substring(@ts,7,3))
while (@j<=@i)
	begin
	if((@j+@k)<10)
			set  @mm=@mats+'_00'+CONVERT(char(5),(@j+@k))
		else if ((@j+@k)<100)
			set @mm=@mats+'_0'+CONVERT(char(5),(@j+@k))
		else 
			set @mm=@mats+'_'+CONVERT(char(5),(@j+@k))
		print @mm
		set @j=@j+1

	end;
--insert into CuonSach values(@mats+'_0'+CONVERT(char(5),@i),@mats)
end;


--Get_TS



--select TuaSach.MaTS,TenTS,NamXB,TheLoai,SoTrang, MaKe,TenNXB,TenTG,SoLuong from TuaSach,TacGia,NXB,Viet
 --where TuaSach.MaTS=Viet.MaTS and Viet.MaTG=TacGia.MaTG and TuaSach.MaNXB=NXB.MaNXB
 --and TuaSach.MaTS=@mats
GO
/****** Object:  StoredProcedure [dbo].[Insert_CS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
				

CREATE proc [dbo].[Insert_CS](@macs char(10),@mats char(10))
as
begin
if exists(select MaSach from CuonSach where MaSach=@macs) print('Khong the Insert')
else
insert into CuonSach values(@macs,@mats)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_CTM]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		


--3. Chi tiet muon
CREATE proc [dbo].[Insert_CTM](@mapm char(10),@macs char(10),@tinhtrang nvarchar(30) )
as
begin
	if exists(select MaPM, MaCS from ChiTietMuon where MaPM=@mapm and MaCS=@macs) print(N'Đã tồn tại!!!')
	else
	insert into ChiTietMuon values(@mapm ,@macs ,@tinhtrang )
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_CTN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
				
				
CREATE proc [dbo].[Insert_CTN](@mapn char(10),@mats varchar(10),@soluong int,@dongia int)
as
begin
if exists(select MaPN,MaTS from ChiTietNhap where MaPN=@mapn and MaTS=@mats) print(N'Đã tồn tại!!!')
else 
insert into ChiTietNhap values(@mapn,@mats,@soluong,@dongia)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_DG]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------Doc gia-------------------
CREATE proc [dbo].[Insert_DG](@madg char(10),@tendg nvarchar(30),@gioitinhdg nvarchar(3),@ngaysinhdg date,@diachidg nvarchar(50), @sdtdg char(13), @Matkhau varchar(50), @LoaiDocGia varchar(5))
as
begin
	if exists(select maDG from DocGia where maDG=@madg) print(N'Đã tồn tại!!!')
	else 
	insert into DocGia values (@madg,@tendg,@ngaysinhdg,@gioitinhdg,@diachidg,@sdtdg,@Matkhau,@LoaiDocGia)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_KeSach]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_KeSach](@make char(10),@chatlieu nvarchar(30),@succhua int)
as
begin
if exists (select MaKe from KeSach where MaKe=@make)
print N'Đã tồn tại!!!'
else 
insert into KeSach values (@make, @chatlieu, @succhua)
end


GO
/****** Object:  StoredProcedure [dbo].[Insert_NCC]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

		
CREATE proc [dbo].[Insert_NCC](@mancc char(10),@tenncc nvarchar(50),@diachincc nvarchar(50),@sdtncc char(13),@email nchar(40))
as
begin
if exists(select maNCC from NCC where maNCC=@mancc)  print(N'Đã tồn tại!!!')
else
insert into NCC values (@mancc,@tenncc,@diachincc,@sdtncc,@email)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_NXB]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	
CREATE proc [dbo].[Insert_NXB](@manxb char(10),@tennxb nvarchar(50),@diachinxb nvarchar(30),@sdtnxb char(13),@emailnxb char(50))
as
begin
if exists(select maNXB from NXB where maNXB=@manxb)
	print(N'Đã tồn tại!!!')
else
insert into NXB(MaNXB,TenNXB,DiaChi,SDT,Email) values(@manxb,@tennxb,@diachinxb,@sdtnxb,@emailnxb)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_PM]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------2.Phieu Muon-------------------
CREATE proc [dbo].[Insert_PM](@mapm char(10),@ngaymuon date,@ngaytra date, @madg char(10),@matt char(10))
as
begin
if exists(select MaPM from PhieuMuon where MaPM=@mapm) print(N'Đã tồn tại!!!')
	else
	insert into PhieuMuon values(@mapm,@ngaymuon,@ngaytra,@madg,@matt)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_PN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

		

CREATE proc [dbo].[Insert_PN](@mapn char(10),@ngaylap date,@matt char(10),@mancc char(10))
as
begin
if exists(select MaPN from PhieuNhap where MaPN=@mapn) print('Khong The Insert')
else
insert into PhieuNhap(MaPN,NgayLap,MaTT,MaNCC) values(@mapn,@ngaylap,@matt,@mancc)
end		
GO
/****** Object:  StoredProcedure [dbo].[Insert_SCN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		
create proc [dbo].[Insert_SCN](@tensach nvarchar(50),@tacgia ntext,@theloai nvarchar(20),@matt char(10),@mancc char(10))
as
begin
if exists(select tenSach from SachCN where tenSach=@tensach) print(N'Đã tồn tại!!!')
else
insert into SachCN values(@tensach,@tacgia,@theloai,@matt,@mancc)
end  
GO
/****** Object:  StoredProcedure [dbo].[Insert_TG]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		

create proc [dbo].[Insert_TG](@matg char(10),@tentg nvarchar(50),@gioitinhtg nvarchar(3),@ngaysinhtg date,@quequantg nvarchar(50))
as
begin
if exists(select maTG from TacGia where maTG=@matg) print(N'Đã tồn tại!!!')
else
insert into TacGia(maTG,tenTG,gioiTinh,ngaySinh,queQuan) values(@matg,@tentg,@gioitinhtg,@ngaysinhtg,@quequantg)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_TS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_TS](@mats char(10),@tents nvarchar(50),@namxb int,@theloai nvarchar (30),@manxb char(10),@make char(10),@soluong int)
as
begin
if exists(select maTS from TuaSach where maTS=@mats) print(N'Đã tồn tại!!!')
else 
insert into TuaSach values(@mats,@tents,@namxb,@theloai,@manxb,@make,@soluong)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_TT]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--5. Thu Thu
CREATE proc [dbo].[Insert_TT](@matt char(10),@tentt nvarchar(30),@gioitinhtt nvarchar(3),@ngaysinhtt date,@diachitt nvarchar(50),@sdttt char(13),@Chucvu nvarchar(30),@MatKhau varchar(50))
as
begin
if exists(select maTT from ThuThu where maTT=@matt) print(N'Đã tồn tại!!!')
else
	insert into ThuThu values(@matt,@tentt,@ngaysinhtt,@gioitinhtt,@diachitt,@sdttt,@Chucvu,@MatKhau)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_V]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		

CREATE proc [dbo].[Insert_V](@mats char(10),@matg char(10),@sotrang int)
as
begin
if exists(select maTS,maTG from Viet where MaTS=@mats and MaTG=@matg) print('Khong the Insert')
else
insert into Viet values(@mats,@matg,@sotrang)
end
GO
/****** Object:  StoredProcedure [dbo].[Select_CS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------Cuon sach-------------------------------
CREATE proc [dbo].[Select_CS]
as
begin
select MaCS, CuonSach.MaTS,TenTS from CuonSach, TuaSach
where CuonSach.MaTS=TuaSach.MaTS
end
 
GO
/****** Object:  StoredProcedure [dbo].[Select_CTM]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Select_CTM]
as
begin
select MaPM as[Số Phiếu Mượn Trả],MaSach as[Mã Cuốn Sách],TinhTrang as[Tình trạng]  from ChiTietMuon
end
GO
/****** Object:  StoredProcedure [dbo].[Select_CTN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_CTN]
as
begin
select MaPN  ,ChiTietNhap.maTS ,tenTS ,ChiTietNhap.SoLuong ,donGia  
from ChiTietNhap,TuaSach 
where ChiTietNhap.maTS=TuaSach.maTS
end
GO
/****** Object:  StoredProcedure [dbo].[Select_DG]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_DG]
as
begin
select *from DocGia
end
GO
/****** Object:  StoredProcedure [dbo].[Select_KeSach]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------Ke Sach----------
CREATE proc [dbo].[Select_KeSach]
as
select KeSach.MaKe,ChatLieu,SucChua, SL from KeSach full join(select MaKe,count( MaCS) as SL from TuaSach,CuonSach where CuonSach.MaTS=TuaSach.MaTS
 group by MaKe)as temp on temp.MaKe=KeSach.MaKe

GO
/****** Object:  StoredProcedure [dbo].[Select_NCC]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------Nha cung cap--------------------------
CREATE proc [dbo].[Select_NCC]
as
begin
select * from NCC
end									
GO
/****** Object:  StoredProcedure [dbo].[Select_NXB]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Select_NXB]
as
select* from NXB
GO
/****** Object:  StoredProcedure [dbo].[Select_PM]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Select_PM]
as
begin
	select PhieuMuon.MaPM,NgayMuon,NgayTra,PhieuMuon.MaDG,TenDG,PhieuMuon.MaTT, TenTT,ChiTietMuon.MaCS,TuaSach.MaTS,TenTS,TinhTrang
	from PhieuMuon, DocGia, ThuThu, ChiTietMuon, TuaSach,CuonSach
	where PhieuMuon.MaDG= DocGia.MaDG and PhieuMuon.MaTT=ThuThu.MaTT and PhieuMuon.MaPM=ChiTietMuon.MaPM
		and TuaSach.MaTS= CuonSach.MaTS and CuonSach.MaCS=ChiTietMuon.MaCS
end
GO
/****** Object:  StoredProcedure [dbo].[Select_PN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------Phieu Nhap---------------------------------
CREATE proc [dbo].[Select_PN]
as
begin
select PhieuNhap.MaPN, NgayLap,PhieuNhap.MaTT,TenTT,TenNCC,ChiTietNhap.MaTS, TenTS,ChiTietNhap.SoLuong,DonGia, ChiTietNhap.SoLuong*DonGia as TT,TongTien
 from PhieuNhap, NCC, ThuThu,Chitietnhap, TuaSach
where PhieuNhap.MaNCC=NCC.MaNCC and PhieuNhap.MaTT=ThuThu.MaTT and ChiTietNhap.MaTS=TuaSach.MaTS and ChiTietNhap.MaPN=PhieuNhap.MaPN

end
GO
/****** Object:  StoredProcedure [dbo].[Select_SCN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--------------------------Sach can nhap	---------------------
create proc [dbo].[Select_SCN]
as
begin
select tenSach as[Tên Sách],tacGia as[Tác Giả],theLoai as[Thể Loại],maTT as[Mã Thủ Thư],maNCC as[Mã Nhà Cung Cấp]  from SachCN
end          
GO
/****** Object:  StoredProcedure [dbo].[Select_TG]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------Tac Gia-----------------------
CREATE proc [dbo].[Select_TG]
as
begin
select *from TacGia
end
GO
/****** Object:  StoredProcedure [dbo].[Select_TS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


				----------------------------Tua Sach------------------------
CREATE proc [dbo].[Select_TS]
as
begin
select TuaSach.MaTS,TenTS,NamXB,TheLoai,SoTrang, MaKe,TenNXB,TenTG,SoLuong from TuaSach,TacGia,NXB,Viet
 where TuaSach.MaTS=Viet.MaTS and Viet.MaTG=TacGia.MaTG and TuaSach.MaNXB=NXB.MaNXB
end
GO
/****** Object:  StoredProcedure [dbo].[Select_TT]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_TT]
as
select *from ThuThu
GO
/****** Object:  StoredProcedure [dbo].[Select_V]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------Viet------------------
create proc [dbo].[Select_V]
as
begin
select maTS as[Mã Tựa Sách],maTG as[Mã Tác Giả],soTrang as[Số Trang] from Viet
end		
GO
/****** Object:  StoredProcedure [dbo].[ThongKe]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThongKe]
as
begin
select CuonSach.MaCS as DM from CuonSach, ChiTietMuon where CuonSach.MaCS=ChiTietMuon.MaCS
select CuonSach.MaCS as CM from CuonSach except select MaCS from ChiTietMuon
end
GO
/****** Object:  StoredProcedure [dbo].[Update_CS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_CS](@macs char(10),@TenCS nvarchar(4),@mats char(10),@MaPN char(10))
as
begin
update CuonSach
set TenCS=@TenCS,
maTS=@mats,
MaPN=@MaPN
where MaSach=@macs
end
GO
/****** Object:  StoredProcedure [dbo].[Update_CTM]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_CTM](@mapm char(10),@macs char(10),@tinhtrang nvarchar(30) )
as
begin
	update ChiTietMuon
	set 
	TinhTrang=@tinhtrang
	where MaPM=@mapm and MaCS=@macs
end
GO
/****** Object:  StoredProcedure [dbo].[Update_CTN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_CTN](@mapn char(10),@mats char(10),@soluong int,@dongia money)
as
begin
update ChiTietNhap
set
MaTS=@mats,
SoLuong=@soluong,
DonGia=@dongia
where MaPN=@mapn
end
GO
/****** Object:  StoredProcedure [dbo].[Update_DG]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_DG](@madg char(10),@tendg nvarchar(30),@gioitinhdg nvarchar(3),@ngaysinhdg date,@diachidg nvarchar(50), @sdtdg char(13), @Matkhau varchar(50), @LoaiDocGia varchar(5))
as
begin
	update DocGia
	set tenDG=@tendg,
		gioiTinh=@gioitinhdg,
		ngaySinh=@ngaysinhdg,
		diaChi=@diachidg,
		SDT=@sdtdg,
		Matkhau=@Matkhau,
		LoaiDocGia=@LoaiDocGia
	where maDG=@madg
end
GO
/****** Object:  StoredProcedure [dbo].[Update_KeSach]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_KeSach](@make char(10),@chatlieu nvarchar(30), @succhua int)
as
begin
update KeSach
set 
	ChatLieu=@chatlieu,
	SucChua=@succhua
where MaKe=@make
end

GO
/****** Object:  StoredProcedure [dbo].[Update_NCC]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_NCC](@mancc char(10),@tenncc nvarchar(50),@diachincc nvarchar(50),@sdtncc char(13),@email char(40))
as
begin 
update NCC
set tenNCC=@tenncc,
diaChi=@diachincc,
SDT=@sdtncc,
Email=@email
where maNCC=@mancc
end		
GO
/****** Object:  StoredProcedure [dbo].[Update_NXB]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_NXB](@manxb char(10),@tennxb nvarchar(50),@diachinxb nvarchar(30),@sdtnxb char(13),@emailnxb char(50))
as
begin
update NXB
set tenNXB=@tennxb,
	diaChi=@diachinxb,
	SDT=@sdtnxb,
	email=@emailnxb
	where maNXB=@manxb
end
GO
/****** Object:  StoredProcedure [dbo].[Update_PM]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_PM](@mapm char(10),@ngaymuon date,@ngaytra date,  @madg char(10),@matt char(10))
as
begin
	update PhieuMuon
	set NgayMuon=@ngaymuon,
		NgayTra =@ngaytra,
		MaDG = @madg,
		MaTT = @matt
	where MaPM = @mapm
end
GO
/****** Object:  StoredProcedure [dbo].[Update_PN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_PN](@MaPN char(10),@ngaylap date,@matt char(10),@mancc char(10))
as
begin
update PhieuNhap
set ngayLap=@ngaylap,
maTT=@matt,
maNCC=@mancc
where MaPN=@MaPN
end		
GO
/****** Object:  StoredProcedure [dbo].[Update_SCN]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_SCN](@tensach nvarchar(50),@tacgia ntext,@theloai nvarchar(20),@loainhap nvarchar(9),@matt char(10),@mancc char(10))
as
begin
update SachCN
set tacGia=@tacgia,
	theLoai=@theloai,
	maTT=@matt,
	maNCC=@mancc
where tenSach=@tensach
end	   
GO
/****** Object:  StoredProcedure [dbo].[Update_TG]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[Update_TG](@matg char(10),@tentg nvarchar(50),@gioitinhtg nvarchar(3),@ngaysinhtg date,@quequantg nvarchar(50))
as
begin
update TacGia
set tenTG=@tentg,
gioiTinh=@gioitinhtg,
ngaySinh=@ngaysinhtg,
queQuan=@quequantg
where maTG=@matg
end
GO
/****** Object:  StoredProcedure [dbo].[Update_TS]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Update_TS](@mats char(10),@tents nvarchar(50),@namxb int,@theloai nvarchar (30),@manxb char(10),@make char(10),@soluong int)
as
begin
update TuaSach
set tenTS=@tents,
	namXB=@namxb,
	TheLoai=@theloai,
	maNXB = @manxb,
	SoLuong=@soluong
where maTS=@mats
end
GO
/****** Object:  StoredProcedure [dbo].[Update_TT]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_TT](@matt char(10),@tentt nvarchar(30),@gioitinhtt nvarchar(3),@ngaysinhtt date,@diachitt nvarchar(50),@sdttt char(13),@Chucvu nvarchar(30), @MatKhau varchar(50))
as
begin
	update ThuThu
	set TenTT = @tentt,
		gioiTinh=@gioitinhtt,
		ngaySinh=@ngaysinhtt,
		diaChi=@diachitt,
		SDT=@sdttt,
		Chucvu=@Chucvu,
		MatKhau=@MatKhau
	where maTT=@matt
end
GO
/****** Object:  StoredProcedure [dbo].[Update_V]    Script Date: 7/4/2019 8:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_V](@mats char(10),@matg char(10),@sotrang int)
as
begin
update Viet
set soTrang=@sotrang
where maTS=@mats and maTG=@matg
end
GO

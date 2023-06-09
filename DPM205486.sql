CREATE DATABASE QLBD;

USE [QLBD]
GO
/****** Object:  Table [dbo].[BANGXH]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANGXH](
	[maclb] [varchar](5) NOT NULL,
	[nam] [int] NOT NULL,
	[vong] [int] NOT NULL,
	[sotran] [int] NOT NULL,
	[thang] [int] NOT NULL,
	[hoa] [int] NOT NULL,
	[thua] [int] NOT NULL,
	[hieuso] [varchar](5) NOT NULL,
	[diem] [int] NOT NULL,
	[hang] [int] NOT NULL,
 CONSTRAINT [PK_BANGXH] PRIMARY KEY CLUSTERED 
(
	[maclb] ASC,
	[nam] ASC,
	[vong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAULACBO]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAULACBO](
	[maclb] [varchar](5) NOT NULL,
	[tenclb] [nvarchar](100) NOT NULL,
	[masan] [varchar](5) NOT NULL,
	[matinh] [varchar](5) NOT NULL,
 CONSTRAINT [PK_CAULACBO] PRIMARY KEY CLUSTERED 
(
	[maclb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAUTHU]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAUTHU](
	[mact] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](100) NOT NULL,
	[vitri] [nvarchar](20) NOT NULL,
	[ngaysinh] [datetime] NULL,
	[diachi] [nvarchar](200) NULL,
	[maclb] [varchar](5) NOT NULL,
	[maqg] [varchar](5) NOT NULL,
	[so] [int] NOT NULL,
 CONSTRAINT [PK_CAUTHU] PRIMARY KEY CLUSTERED 
(
	[mact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HLV_CLB]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HLV_CLB](
	[mahlv] [varchar](5) NOT NULL,
	[maclb] [varchar](5) NOT NULL,
	[vaitro] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_HLV_CLB] PRIMARY KEY CLUSTERED 
(
	[mahlv] ASC,
	[maclb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HUANLUYENVIEN]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HUANLUYENVIEN](
	[mahlv] [varchar](5) NOT NULL,
	[tenhlv] [nvarchar](100) NOT NULL,
	[ngaysinh] [datetime] NULL,
	[diachi] [nvarchar](100) NOT NULL,
	[dienthoai] [nvarchar](20) NULL,
	[maqg] [varchar](5) NOT NULL,
 CONSTRAINT [PK_HUANLUYENVIEN] PRIMARY KEY CLUSTERED 
(
	[mahlv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUOCGIA]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUOCGIA](
	[maqg] [varchar](5) NOT NULL,
	[tenqg] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_QUOCGIA] PRIMARY KEY CLUSTERED 
(
	[maqg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANVD]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANVD](
	[masan] [varchar](5) NOT NULL,
	[tensan] [nvarchar](100) NOT NULL,
	[diachi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SANVD] PRIMARY KEY CLUSTERED 
(
	[masan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THAMGIA]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMGIA](
	[matd] [numeric](18, 0) NULL,
	[mact] [numeric](18, 0) NULL,
	[sotrai] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TINH]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TINH](
	[matinh] [varchar](5) NOT NULL,
	[tentinh] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TINH] PRIMARY KEY CLUSTERED 
(
	[matinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRANDAU]    Script Date: 3/10/2023 10:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRANDAU](
	[matran] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[nam] [int] NOT NULL,
	[vong] [int] NOT NULL,
	[ngaytd] [datetime] NOT NULL,
	[maclb1] [varchar](5) NOT NULL,
	[maclb2] [varchar](5) NOT NULL,
	[masan] [varchar](5) NOT NULL,
	[ketqua] [varchar](5) NOT NULL,
 CONSTRAINT [PK_TRANDAU] PRIMARY KEY CLUSTERED 
(
	[matran] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'BBD', 2009, 1, 1, 1, 0, 0, N'3-0', 3, 1)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'BBD', 2009, 2, 2, 1, 0, 1, N'3-5', 3, 2)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'BBD', 2009, 3, 3, 2, 0, 1, N'4-5', 6, 1)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'BBD', 2009, 4, 4, 2, 1, 1, N'6-7', 7, 1)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'GDT', 2009, 1, 1, 0, 1, 0, N'1-1', 1, 3)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'GDT', 2009, 2, 1, 0, 1, 0, N'1-1', 1, 4)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'GDT', 2009, 3, 2, 1, 1, 0, N'3-1', 4, 2)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'GDT', 2009, 4, 3, 1, 2, 0, N'5-1', 5, 2)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'KKH', 2009, 1, 1, 0, 1, 0, N'1-1', 1, 2)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'KKH', 2009, 2, 2, 0, 2, 0, N'3-3', 2, 3)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'KKH', 2009, 3, 3, 0, 2, 1, N'3-4', 2, 4)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'KKH', 2009, 4, 4, 1, 2, 1, N'4-4', 5, 3)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'SDN', 2009, 1, 1, 0, 0, 1, N'0-3', 0, 5)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'SDN', 2009, 2, 2, 1, 1, 0, N'2-5', 1, 5)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'SDN', 2009, 3, 2, 1, 1, 0, N'2-5', 1, 5)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'SDN', 2009, 4, 2, 1, 1, 0, N'2-5', 1, 5)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'TPY', 2009, 1, 0, 0, 0, 0, N'0-0', 0, 4)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'TPY', 2009, 2, 1, 1, 0, 0, N'5-0', 3, 1)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'TPY', 2009, 3, 2, 1, 0, 1, N'5-2', 3, 3)
INSERT [dbo].[BANGXH] ([maclb], [nam], [vong], [sotran], [thang], [hoa], [thua], [hieuso], [diem], [hang]) VALUES (N'TPY', 2009, 4, 3, 1, 0, 2, N'5-3', 3, 4)
INSERT [dbo].[CAULACBO] ([maclb], [tenclb], [masan], [matinh]) VALUES (N'BBD', N'BECAMEX BÌNH DƯƠNG', N'GD', N'BD')
INSERT [dbo].[CAULACBO] ([maclb], [tenclb], [masan], [matinh]) VALUES (N'CSDT', N'TẬP ĐOÀN CAO SU ĐỒNG THÁP', N'GD', N'BD')
INSERT [dbo].[CAULACBO] ([maclb], [tenclb], [masan], [matinh]) VALUES (N'GDT', N'GẠCH ĐỒNG TÂM LONG AN', N'LA', N'LA')
INSERT [dbo].[CAULACBO] ([maclb], [tenclb], [masan], [matinh]) VALUES (N'HAGL', N'HOÀNG ANH GIA LAI', N'PL', N'GL')
INSERT [dbo].[CAULACBO] ([maclb], [tenclb], [masan], [matinh]) VALUES (N'KKH', N'KHATOCO KHÁNH HÒA', N'NT', N'KH')
INSERT [dbo].[CAULACBO] ([maclb], [tenclb], [masan], [matinh]) VALUES (N'SDN', N'SHB ĐÀ NẴNG', N'CL', N'DN')
INSERT [dbo].[CAULACBO] ([maclb], [tenclb], [masan], [matinh]) VALUES (N'TPY', N'THÉP PHÚ YÊN', N'TH', N'PY')
SET IDENTITY_INSERT [dbo].[CAUTHU] ON 

INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(1 AS Numeric(18, 0)), N'Nguyễn Vũ Phong', N'Tiền vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'BBD', N'VN', 17)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(2 AS Numeric(18, 0)), N'Nguyễn Công Vinh', N'Tiền đạo', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'HAGL', N'VN', 9)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(3 AS Numeric(18, 0)), N'Nguyễn Hồng Sơn', N'Tiền vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'SDN', N'VN', 9)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(4 AS Numeric(18, 0)), N'Lê Tấn Tài', N'Tiền vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'KKH', N'VN', 14)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(5 AS Numeric(18, 0)), N'Phan Hồng Sơn', N'Thủ môn', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'HAGL', N'VN', 1)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(6 AS Numeric(18, 0)), N'Ronaldo', N'Tiền vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'SDN', N'BRA', 7)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(7 AS Numeric(18, 0)), N'Robino', N'Tiền vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'SDN', N'BRA', 8)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(8 AS Numeric(18, 0)), N'Vidic', N'Hậu vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'HAGL', N'ANH', 3)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(9 AS Numeric(18, 0)), N'Trần Văn Santos', N'Thủ môn', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'BBD', N'VN', 4)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(10 AS Numeric(18, 0)), N'Nguyễn Trường Sơn', N'Hậu vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'BBD', N'VN', 14)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(11 AS Numeric(18, 0)), N'Phan Hồng Sơn', N'Thủ môn', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'HAGL', N'VN', 10)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(12 AS Numeric(18, 0)), N'Huỳnh Hồng Sơn', N'Tiền vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'BBD', N'VN', 9)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(13 AS Numeric(18, 0)), N'Lee Nguyễn', N'Tiền đạo', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'BBD', N'VN', 14)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(14 AS Numeric(18, 0)), N'Bùi Tấn Trường', N'Thủ môn', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'CSDT', N'VN', 1)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(15 AS Numeric(18, 0)), N'Phan Văn Tài Em', N'Tiền vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'GDT', N'VN', 10)
INSERT [dbo].[CAUTHU] ([mact], [hoten], [vitri], [ngaysinh], [diachi], [maclb], [maqg], [so]) VALUES (CAST(16 AS Numeric(18, 0)), N'Lý Tiểu Long', N'Tiền vệ', CAST(N'2016-10-23 00:00:00.000' AS DateTime), NULL, N'TPY', N'VN', 7)
SET IDENTITY_INSERT [dbo].[CAUTHU] OFF
INSERT [dbo].[HLV_CLB] ([mahlv], [maclb], [vaitro]) VALUES (N'HLV01', N'GDT', N'HLV Chính')
INSERT [dbo].[HLV_CLB] ([mahlv], [maclb], [vaitro]) VALUES (N'HLV02', N'SDN', N'HLV Chính')
INSERT [dbo].[HLV_CLB] ([mahlv], [maclb], [vaitro]) VALUES (N'HLV03', N'HAGL', N'HLV Chính')
INSERT [dbo].[HLV_CLB] ([mahlv], [maclb], [vaitro]) VALUES (N'HLV04', N'KKH', N'HLV Chính')
INSERT [dbo].[HLV_CLB] ([mahlv], [maclb], [vaitro]) VALUES (N'HLV05', N'TPY', N'HLV Chính')
INSERT [dbo].[HLV_CLB] ([mahlv], [maclb], [vaitro]) VALUES (N'HLV06', N'CSDT', N'HLV Chính')
INSERT [dbo].[HLV_CLB] ([mahlv], [maclb], [vaitro]) VALUES (N'HLV07', N'BBD', N'HLV Chính')
INSERT [dbo].[HLV_CLB] ([mahlv], [maclb], [vaitro]) VALUES (N'HLV08', N'BBD', N'HLV Thủ môn')
INSERT [dbo].[HUANLUYENVIEN] ([mahlv], [tenhlv], [ngaysinh], [diachi], [dienthoai], [maqg]) VALUES (N'HLV01', N'Vital', CAST(N'1995-10-15 00:00:00.000' AS DateTime), N'null', N'0918011075', N'BDN')
INSERT [dbo].[HUANLUYENVIEN] ([mahlv], [tenhlv], [ngaysinh], [diachi], [dienthoai], [maqg]) VALUES (N'HLV02', N'Lê Huỳnh Đức', CAST(N'1972-05-20 00:00:00.000' AS DateTime), N'null', N'01223456789', N'VN')
INSERT [dbo].[HUANLUYENVIEN] ([mahlv], [tenhlv], [ngaysinh], [diachi], [dienthoai], [maqg]) VALUES (N'HLV03', N'Kiatisuk', CAST(N'1970-12-11 00:00:00.000' AS DateTime), N'null', N'01990123456', N'THAI')
INSERT [dbo].[HUANLUYENVIEN] ([mahlv], [tenhlv], [ngaysinh], [diachi], [dienthoai], [maqg]) VALUES (N'HLV04', N'Hoàng Anh Tuấn', CAST(N'1970-06-10 00:00:00.000' AS DateTime), N'null', N'0989112233', N'VN')
INSERT [dbo].[HUANLUYENVIEN] ([mahlv], [tenhlv], [ngaysinh], [diachi], [dienthoai], [maqg]) VALUES (N'HLV05', N'Trần Công Minh', CAST(N'1973-07-07 00:00:00.000' AS DateTime), N'null', N'0909099990', N'VN')
INSERT [dbo].[HUANLUYENVIEN] ([mahlv], [tenhlv], [ngaysinh], [diachi], [dienthoai], [maqg]) VALUES (N'HLV06', N'Trần Văn Phúc', CAST(N'1965-03-02 00:00:00.000' AS DateTime), N'null', N'01650101234', N'HQ')
INSERT [dbo].[HUANLUYENVIEN] ([mahlv], [tenhlv], [ngaysinh], [diachi], [dienthoai], [maqg]) VALUES (N'HLV07', N'Yoon-Hwan Cho', CAST(N'1960-02-02 00:00:00.000' AS DateTime), N'null', N'null', N'HQ')
INSERT [dbo].[HUANLUYENVIEN] ([mahlv], [tenhlv], [ngaysinh], [diachi], [dienthoai], [maqg]) VALUES (N'HLV08', N'Yun-Kyum Choi', CAST(N'1962-03-03 00:00:00.000' AS DateTime), N'null', N'null', N'HQ')
INSERT [dbo].[QUOCGIA] ([maqg], [tenqg]) VALUES (N'ANH', N'Anh Quốc')
INSERT [dbo].[QUOCGIA] ([maqg], [tenqg]) VALUES (N'BDN', N'Bồ Đào Nha')
INSERT [dbo].[QUOCGIA] ([maqg], [tenqg]) VALUES (N'BRA', N'Bra-xin')
INSERT [dbo].[QUOCGIA] ([maqg], [tenqg]) VALUES (N'HQ', N'Hàn Quốc')
INSERT [dbo].[QUOCGIA] ([maqg], [tenqg]) VALUES (N'ITA', N'Ý')
INSERT [dbo].[QUOCGIA] ([maqg], [tenqg]) VALUES (N'TBN', N'Tây Ban Nha')
INSERT [dbo].[QUOCGIA] ([maqg], [tenqg]) VALUES (N'THAI', N'Thái Lan')
INSERT [dbo].[QUOCGIA] ([maqg], [tenqg]) VALUES (N'VN', N'Việt Nam')
INSERT [dbo].[SANVD] ([masan], [tensan], [diachi]) VALUES (N'CL', N'Chi Lăng', N'127 Võ Văn Tần, Đà Nẵng')
INSERT [dbo].[SANVD] ([masan], [tensan], [diachi]) VALUES (N'CLDT', N'Cao Lãnh', N'134 TX Cao Lãnh, Đồng Tháp')
INSERT [dbo].[SANVD] ([masan], [tensan], [diachi]) VALUES (N'GD', N'Gò Đậu', N'123 QL1, TX Thủ Dầu Một, Bình Dương')
INSERT [dbo].[SANVD] ([masan], [tensan], [diachi]) VALUES (N'HD', N'Hàng Đẫy', N'345 Lý Chiêu Hoàng, Bạch Mai, Hà Nội')
INSERT [dbo].[SANVD] ([masan], [tensan], [diachi]) VALUES (N'LA', N'Long An', N'102 Hùng Vương, Tp Tân An, Long An')
INSERT [dbo].[SANVD] ([masan], [tensan], [diachi]) VALUES (N'NT ', N'Nha Trang', N'128 Phan Chu Trinh, Nha Trang, Khánh Hòa')
INSERT [dbo].[SANVD] ([masan], [tensan], [diachi]) VALUES (N'PL', N'Pleiku', N'22 Hồ Tùng Mậu, Thống Nhất, Thị xã Pleiku, Gia Lai')
INSERT [dbo].[SANVD] ([masan], [tensan], [diachi]) VALUES (N'TH', N'Tuy Hòa', N'57 Trường Chinh, Tuy Hòa, Phú Yên')
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 2)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), 1)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 1)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), 1)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 1)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 2)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), 1)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), 5)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), 2)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), 1)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 1)
INSERT [dbo].[THAMGIA] ([matd], [mact], [sotrai]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), 2)
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'BD', N'Bình Dương')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'DN', N'Đà Nẵng')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'DT', N'Đồng Tháp')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'GL', N'Gia Lai')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'HN', N'Hà Nội')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'HP', N'Hải Phòng')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'KH', N'Khánh Hòa')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'LA', N'Long An')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'NA', N'Nghệ An')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'NB', N'Ninh Bình')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'PY', N'Phú Yên')
INSERT [dbo].[TINH] ([matinh], [tentinh]) VALUES (N'SG', N'Sài Gòn')
SET IDENTITY_INSERT [dbo].[TRANDAU] ON 

INSERT [dbo].[TRANDAU] ([matran], [nam], [vong], [ngaytd], [maclb1], [maclb2], [masan], [ketqua]) VALUES (CAST(1 AS Numeric(18, 0)), 2009, 1, CAST(N'2009-02-07 00:00:00.000' AS DateTime), N'BBD', N'SDN', N'GD', N'3-0')
INSERT [dbo].[TRANDAU] ([matran], [nam], [vong], [ngaytd], [maclb1], [maclb2], [masan], [ketqua]) VALUES (CAST(2 AS Numeric(18, 0)), 2009, 1, CAST(N'2009-02-07 00:00:00.000' AS DateTime), N'KKH', N'GDT', N'NT', N'1-1')
INSERT [dbo].[TRANDAU] ([matran], [nam], [vong], [ngaytd], [maclb1], [maclb2], [masan], [ketqua]) VALUES (CAST(3 AS Numeric(18, 0)), 2009, 2, CAST(N'2009-02-16 00:00:00.000' AS DateTime), N'SDN', N'KKH', N'CL', N'2-2')
INSERT [dbo].[TRANDAU] ([matran], [nam], [vong], [ngaytd], [maclb1], [maclb2], [masan], [ketqua]) VALUES (CAST(4 AS Numeric(18, 0)), 2009, 2, CAST(N'2009-02-16 00:00:00.000' AS DateTime), N'TPY', N'BBD', N'TH', N'5-0')
INSERT [dbo].[TRANDAU] ([matran], [nam], [vong], [ngaytd], [maclb1], [maclb2], [masan], [ketqua]) VALUES (CAST(5 AS Numeric(18, 0)), 2009, 3, CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'TPY', N'GDT', N'TH', N'0-2')
INSERT [dbo].[TRANDAU] ([matran], [nam], [vong], [ngaytd], [maclb1], [maclb2], [masan], [ketqua]) VALUES (CAST(6 AS Numeric(18, 0)), 2009, 3, CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'KKH', N'BBD', N'NT', N'0-1')
INSERT [dbo].[TRANDAU] ([matran], [nam], [vong], [ngaytd], [maclb1], [maclb2], [masan], [ketqua]) VALUES (CAST(7 AS Numeric(18, 0)), 2009, 4, CAST(N'2009-03-07 00:00:00.000' AS DateTime), N'KKH', N'TPY', N'NT', N'1-0')
INSERT [dbo].[TRANDAU] ([matran], [nam], [vong], [ngaytd], [maclb1], [maclb2], [masan], [ketqua]) VALUES (CAST(8 AS Numeric(18, 0)), 2009, 4, CAST(N'2009-03-07 00:00:00.000' AS DateTime), N'BBD', N'GDT', N'GD', N'2-2')
SET IDENTITY_INSERT [dbo].[TRANDAU] OFF
ALTER TABLE [dbo].[BANGXH]  WITH CHECK ADD  CONSTRAINT [FK_BANGXH_CAULACBO] FOREIGN KEY([maclb])
REFERENCES [dbo].[CAULACBO] ([maclb])
GO
ALTER TABLE [dbo].[BANGXH] CHECK CONSTRAINT [FK_BANGXH_CAULACBO]
GO
ALTER TABLE [dbo].[CAULACBO]  WITH CHECK ADD  CONSTRAINT [FK_CAULACBO_SANVD] FOREIGN KEY([masan])
REFERENCES [dbo].[SANVD] ([masan])
GO
ALTER TABLE [dbo].[CAULACBO] CHECK CONSTRAINT [FK_CAULACBO_SANVD]
GO
ALTER TABLE [dbo].[CAULACBO]  WITH CHECK ADD  CONSTRAINT [FK_CAULACBO_TINH] FOREIGN KEY([matinh])
REFERENCES [dbo].[TINH] ([matinh])
GO
ALTER TABLE [dbo].[CAULACBO] CHECK CONSTRAINT [FK_CAULACBO_TINH]
GO
ALTER TABLE [dbo].[CAUTHU]  WITH CHECK ADD  CONSTRAINT [FK_CAUTHU_CAULACBO] FOREIGN KEY([maclb])
REFERENCES [dbo].[CAULACBO] ([maclb])
GO
ALTER TABLE [dbo].[CAUTHU] CHECK CONSTRAINT [FK_CAUTHU_CAULACBO]
GO
ALTER TABLE [dbo].[CAUTHU]  WITH CHECK ADD  CONSTRAINT [FK_CAUTHU_QUOCGIA] FOREIGN KEY([maqg])
REFERENCES [dbo].[QUOCGIA] ([maqg])
GO
ALTER TABLE [dbo].[CAUTHU] CHECK CONSTRAINT [FK_CAUTHU_QUOCGIA]
GO
ALTER TABLE [dbo].[HLV_CLB]  WITH CHECK ADD  CONSTRAINT [FK_HLV_CLB_CAULACBO] FOREIGN KEY([maclb])
REFERENCES [dbo].[CAULACBO] ([maclb])
GO
ALTER TABLE [dbo].[HLV_CLB] CHECK CONSTRAINT [FK_HLV_CLB_CAULACBO]
GO
ALTER TABLE [dbo].[HLV_CLB]  WITH CHECK ADD  CONSTRAINT [FK_HLV_CLB_HUANLUYENVIEN] FOREIGN KEY([mahlv])
REFERENCES [dbo].[HUANLUYENVIEN] ([mahlv])
GO
ALTER TABLE [dbo].[HLV_CLB] CHECK CONSTRAINT [FK_HLV_CLB_HUANLUYENVIEN]
GO
ALTER TABLE [dbo].[HUANLUYENVIEN]  WITH CHECK ADD  CONSTRAINT [FK_HUANLUYENVIEN_QUOCGIA] FOREIGN KEY([maqg])
REFERENCES [dbo].[QUOCGIA] ([maqg])
GO
ALTER TABLE [dbo].[HUANLUYENVIEN] CHECK CONSTRAINT [FK_HUANLUYENVIEN_QUOCGIA]
GO
ALTER TABLE [dbo].[TRANDAU]  WITH CHECK ADD  CONSTRAINT [FK_TRANDAU_CAULACBO] FOREIGN KEY([maclb1])
REFERENCES [dbo].[CAULACBO] ([maclb])
GO
ALTER TABLE [dbo].[TRANDAU] CHECK CONSTRAINT [FK_TRANDAU_CAULACBO]
GO
ALTER TABLE [dbo].[TRANDAU]  WITH CHECK ADD  CONSTRAINT [FK_TRANDAU_CAULACBO1] FOREIGN KEY([maclb2])
REFERENCES [dbo].[CAULACBO] ([maclb])
GO
ALTER TABLE [dbo].[TRANDAU] CHECK CONSTRAINT [FK_TRANDAU_CAULACBO1]
GO
ALTER TABLE [dbo].[TRANDAU]  WITH CHECK ADD  CONSTRAINT [FK_TRANDAU_SANVD] FOREIGN KEY([masan])
REFERENCES [dbo].[SANVD] ([masan])
GO
ALTER TABLE [dbo].[TRANDAU] CHECK CONSTRAINT [FK_TRANDAU_SANVD]
GO

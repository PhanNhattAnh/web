create database QL_LapTop
USE QL_LapTop
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gias](
	[ma_gia] [int] IDENTITY(1,1) NOT NULL,
	[gia_goc] [int] NOT NULL,
	[gia_khuyen_mai] [int] NOT NULL,
	[ngay_ap_dung] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.gias] PRIMARY KEY CLUSTERED 
(
	[ma_gia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[gias] ON
INSERT [dbo].[gias] ([ma_gia], [gia_goc], [gia_khuyen_mai], [ngay_ap_dung]) VALUES (1, 100000, 90000, CAST(0x0000AC7C00000000 AS DateTime))
INSERT [dbo].[gias] ([ma_gia], [gia_goc], [gia_khuyen_mai], [ngay_ap_dung]) VALUES (2, 120000, 100000, CAST(0x0000AC7C00000000 AS DateTime))
INSERT [dbo].[gias] ([ma_gia], [gia_goc], [gia_khuyen_mai], [ngay_ap_dung]) VALUES (3, 10000, 9000, CAST(0x0000AC7C00000000 AS DateTime))
INSERT [dbo].[gias] ([ma_gia], [gia_goc], [gia_khuyen_mai], [ngay_ap_dung]) VALUES (4, 15000, 12000, CAST(0x0000AC7C00000000 AS DateTime))
INSERT [dbo].[gias] ([ma_gia], [gia_goc], [gia_khuyen_mai], [ngay_ap_dung]) VALUES (5, 16000, 12000, CAST(0x0000AC7C00000000 AS DateTime))
INSERT [dbo].[gias] ([ma_gia], [gia_goc], [gia_khuyen_mai], [ngay_ap_dung]) VALUES (6, 30000, 26000, CAST(0x0000AC7C00000000 AS DateTime))
INSERT [dbo].[gias] ([ma_gia], [gia_goc], [gia_khuyen_mai], [ngay_ap_dung]) VALUES (7, 25000, 21000, CAST(0x0000AC8A01418455 AS DateTime))
SET IDENTITY_INSERT [dbo].[gias] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmucs](
	[ma_danh_muc] [int] IDENTITY(1,1) NOT NULL,
	[ten_danh_muc] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.danhmucs] PRIMARY KEY CLUSTERED 
(
	[ma_danh_muc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[danhmucs] ON
INSERT [dbo].[danhmucs] ([ma_danh_muc], [ten_danh_muc]) VALUES (1, N'Gamming')
INSERT [dbo].[danhmucs] ([ma_danh_muc], [ten_danh_muc]) VALUES (2, N'Đồ Họa')
INSERT [dbo].[danhmucs] ([ma_danh_muc], [ten_danh_muc]) VALUES (3, N'Văn Phòng')
INSERT [dbo].[danhmucs] ([ma_danh_muc], [ten_danh_muc]) VALUES (4, N'Tai Nghe')
INSERT [dbo].[danhmucs] ([ma_danh_muc], [ten_danh_muc]) VALUES (5, N'Bàn Phím')
INSERT [dbo].[danhmucs] ([ma_danh_muc], [ten_danh_muc]) VALUES (6, N'Chuột')

SET IDENTITY_INSERT [dbo].[danhmucs] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcaps](
	[ma_nha_cung_cap] [int] IDENTITY(1,1) NOT NULL,
	[ten_nha_cung_cap] [nvarchar](max) NULL,
	[dia_chi] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.nhacungcaps] PRIMARY KEY CLUSTERED 
(
	[ma_nha_cung_cap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[nhacungcaps] ON
INSERT [dbo].[nhacungcaps] ([ma_nha_cung_cap], [ten_nha_cung_cap], [dia_chi]) VALUES (1, N'ASUS', N'255 Thạch lam')
INSERT [dbo].[nhacungcaps] ([ma_nha_cung_cap], [ten_nha_cung_cap], [dia_chi]) VALUES (2, N'ACER', N'Cầu Giấy Hà Nội')
INSERT [dbo].[nhacungcaps] ([ma_nha_cung_cap], [ten_nha_cung_cap], [dia_chi]) VALUES (3, N'DELL', N'25 Củ Chi')
INSERT [dbo].[nhacungcaps] ([ma_nha_cung_cap], [ten_nha_cung_cap], [dia_chi]) VALUES (4, N'LENOVO', N'18 khu dân cư Bình Thạnh')
INSERT [dbo].[nhacungcaps] ([ma_nha_cung_cap], [ten_nha_cung_cap], [dia_chi]) VALUES (5, N'LOGITECH', N'25 khu dân cư Bình Hưng')
INSERT [dbo].[nhacungcaps] ([ma_nha_cung_cap], [ten_nha_cung_cap], [dia_chi]) VALUES (6, N'AKKO', N'12 khu dân cư Bình Thạnh')
SET IDENTITY_INSERT [dbo].[nhacungcaps] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachs](
	[id_Khach] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[PassWord] [nvarchar](max) NOT NULL,
	[ComfirmPassWord] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.khachs] PRIMARY KEY CLUSTERED 
(
	[id_Khach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[khachs] ON
INSERT [dbo].[khachs] ([id_Khach], [FirstName], [LastName], [Email], [UserName], [PassWord], [ComfirmPassWord]) VALUES (2, N'Hạnh', N'Minh', N'minhhanh@gmail.com', N'QuocKiet', N'e10adc3949ba59abbe56e057f20f883e', N'123456')
INSERT [dbo].[khachs] ([id_Khach], [FirstName], [LastName], [Email], [UserName], [PassWord], [ComfirmPassWord]) VALUES (3, N'Anh', N'Nhật', N'nhatanh@gmail.com', N'DinhTien', N'e10adc3949ba59abbe56e057f20f883e', N'123456')
INSERT [dbo].[khachs] ([id_Khach], [FirstName], [LastName], [Email], [UserName], [PassWord], [ComfirmPassWord]) VALUES (4, N'Tuấn', N'Anh', N'anhtuan@gmail.com', N'VanKien', N'e10adc3949ba59abbe56e057f20f883e', N'123456')
INSERT [dbo].[khachs] ([id_Khach], [FirstName], [LastName], [Email], [UserName], [PassWord], [ComfirmPassWord]) VALUES (5, N'Đức', N'Minh ', N'MD@gmail.com', N'QuocVinh', N'e10adc3949ba59abbe56e057f20f883e', N'123456')
INSERT [dbo].[khachs] ([id_Khach], [FirstName], [LastName], [Email], [UserName], [PassWord], [ComfirmPassWord]) VALUES (6, N'Mi', N'Tuyết', N'TM@gmail.com', N'VanKhai', N'e10adc3949ba59abbe56e057f20f883e', N'123456')
INSERT [dbo].[khachs] ([id_Khach], [FirstName], [LastName], [Email], [UserName], [PassWord], [ComfirmPassWord]) VALUES (7, N'Luân', N'Quốc', N'LQ@gmail.com', N'ChiLinh', N'e10adc3949ba59abbe56e057f20f883e', N'123456')
SET IDENTITY_INSERT [dbo].[khachs] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhangs](
	[ma_khach_hang] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[ComfirmPassWord] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.khachhangs] PRIMARY KEY CLUSTERED 
(
	[ma_khach_hang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[khachhangs] ON
INSERT [dbo].[khachhangs] ([ma_khach_hang], [email], [password], [UserName], [ComfirmPassWord]) VALUES (3, N'nhatanh@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'NhatAnh', N'123456')
INSERT [dbo].[khachhangs] ([ma_khach_hang], [email], [password], [UserName], [ComfirmPassWord]) VALUES (5, N'minhhanh@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'MinhHanh', N'123456')

SET IDENTITY_INSERT [dbo].[khachhangs] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanphams](
	[ma_sp] [int] IDENTITY(1,1) NOT NULL,
	[ten_sp] [nvarchar](max) NULL,
	[ma_gia] [int] NOT NULL,
	[ma_ncc] [int] NOT NULL,
	[ma_danh_muc] [int] NOT NULL,
	[trang_thai] [bit] NOT NULL,
	[ghi_chu] [nvarchar](max) NULL,
	[xuat_xu] [nvarchar](max) NULL,
	[mo_ta] [nvarchar](max) NULL,
	[hinh_anh] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.sanphams] PRIMARY KEY CLUSTERED 
(
	[ma_sp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[sanphams] ON
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (4, N'Laptop Asus TUF A15 2022', 1, 1, 3, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Asus TUF A15 FA507RE-A15.R73050T 2022 (Ryzen 7-6800H, 8GB, 512GB, RTX 3050 Ti 4GB, 15.6” FHD)', N'/image/gaming1.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (5, N'Laptop Acer Nitro 5 2022', 2, 1, 1, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Nitro 5 2022 AN515-58 (Core i5 - 12500H, 16GB, 512GB, RTX 3050Ti, 15.6" FHD IPS 144Hz)', N'/image/gaming2.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (6, N'Lenovo Legion R9000X', 4, 1, 1, 0, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Lenovo Legion R9000X (Ryzen 7 - 5800H, 16GB, 512GB, RTX 3060, 15.6'' WQXGA 165Hz)', N'/image/gaming3.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (8, N'Dell Gaming G15 2022', 3, 1, 3, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Dell Gaming G15 5525 (Ryzen 7-6800H, 16GB, 512GB, NVIDIA RTX 3050Ti 4GB, 15.6'' FHD 120Hz)', N'/image/gaming4.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (16, N'Lenovo IdeaPad 5 Pro 16ACH6', 4, 1, 2, 0, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Lenovo IdeaPad 5 Pro 16ACH6 (Ryzen 5-5600H, 8GB, 512GB, 16.0" WQXGA IPS, Storm Gray)', N'/image/dohoa1.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (17, N'Dell Inspiron 16 5620', 3, 2, 2, 1, N'Đồ dễ vỡ nhẹ tay', N'Trung Quốc', N'Dell Inspiron 16 5620 (Core i7-1260P, 16GB, 512GB, Iris Xe Graphics, 16" FHD+ WVA)', N'/image/dohoa2.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (18, N'Asus Zenbook 14 Q409 ZA', 1, 1, 2, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Asus Zenbook 14 Q409 ZA (Core i5-1240P, 8GB, 256GB, 14.0'' 2K+ OLED 90Hz)', N'/image/dohoa3.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (19, N'Acer Aspire 1 A115-32', 2, 2, 2, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Acer Aspire 1 A115-32 (Celeron - N4500, 4GB, 128GB, 15.6'' FHD)', N'/image/dohoa4.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (20, N'Laptop Dell Precision 7550', 3, 1, 3, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Laptop Dell Precision 7550 (Core i7-10750H, 16GB, 256GB, VGA NVIDIA Quadro T2000, 15.6 inch FHD IPS)', N'/image/vanphong1.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (21, N'Laptop LENOVO ThinkPad P1 Gen 3', 4, 1, 3, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Laptop Lenovo ThinkPad P1 Gen 3 Core i7-10750H, 8GB, 256GB, NVIDIA® Quadro T1000 4GB Max-Q, 15.6 FHD IPS', N'/image/vanphong2.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (22, N'Dell Alienware X17 R2', 3, 1, 3, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Dell Alienware X17 R2 (Core i7-12700H, 32GB, 1TB, VGA RTX 3070Ti, 17.3 inch FHD 165Hz)', N'/image/vanphong3.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (23, N'Laptop HP Victus 16', 1, 1, 3, 1, N'BĐồ dễ vỡ nhẹ tay', N'Việt Nam', N'Laptop Gaming HP Victus 16-e0175AX 4R0U8PA (AMD Ryzen 5-5600H, 8GB, 512GB, RTX 3050 4GB, 16.1 FHD 144Hz)', N'/image/vanphong4.1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (24, N'Bàn phím AKKO ACR Pro 68', 6, 1, 5, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'1 Dây cáp USB Type-C 2 Type-A + 01 set keycap tặng kèm', N'/image/banphim1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (25, N'Bàn phím AKKO PC75B Plus Year of Tiger', 6, 2, 5, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'1 sách hướng dẫn sử dụng + 1 dây USB Type-C to USB + 1 USB Receiver 2.4Ghz + 1 Nắp nhựa che bụi phím', N'/image/banphim2.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (26, N'Bàn phím cơ AKKO 3098N Multi-modes Black Gold', 6, 2, 5, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 dây cáp USB + 20 keycap tặng kèm + USB Receiver 2.4Ghz', N'/image/banphim3.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (27, N'Bàn phím cơ Logitech G713 RGB TKL Tactile', 5, 1, 5, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'Bàn phím chơi game G713 Dây USB C tới USB A - 1,8M Kê tay', N'/image/banphim4.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (28, N'Bàn phím không dây Logitech MX Keys Min', 5, 2, 5, 1, N'Đồ dễ vỡ nhẹ tay ', N'Việt Nam', N'Tương thích với chuột hỗ trợ Logitech Flow Khuyến cáo nên sử dụng cùng chuột MX Anywhere', N'/image/banphim5.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (29, N'Chuột Fuhlen D90S', 5, 2, 6, 1, N'Đồ dễ vỡ nhẹ tay', N'Đà Lạt, Việt Nam', N'Thiết kế đối xứng phù hợp cho người thuận cả tay trái và tay phải', N'/image/chuot1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (30, N'Chuột Logitech G Pro X', 5, 1, 6, 1, N'Đồ dễ vỡ nhẹ tay', N'Việt Nam', N'không dây LIGHTSPEED', N'~/image/chuot2.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (31, N'Chuột Logitech G502 X Plus', 5, 1, 6, 1, N'Đồ dễ vỡ nhẹ tay', N'Mỹ ', N'Công nghệ không dây LIGHTSPEED', N'/image/chuot3.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (32, N'Chuột Logitech POP', 5, 1, 6, 1, N'Đồ dễ vỡ nhẹ tay', N'Mỹ ', N'Theo dõi quang học có độ chính xác cao của Logitech', N'/image/chuot4.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (33, N'Chuột Logitech G502 X', 5, 1, 6, 1, N'Đồ dễ vỡ nhẹ tay', N'Mỹ ', N'LIGHTFORCE - switch lai Quang - Cơ', N'/image/chuot5.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (34, N'Tai nghe AOC GH210', 6, 1, 4, 1, N'Đồ dễ vỡ nhẹ tay', N'Mỹ ', N'Boom mic có thể tháo rời; Bộ điều khiển nội tuyến', N'/image/tainghe1.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (35, N'Tai nghe Corsair HS80 RGB Wireless', 6, 1, 4, 1, N'Đồ dễ vỡ nhẹ tay', N'Mỹ ', N'Phần mềm CUE âm thanh: Được hỗ trợ trong iCUE', N'/image/tainghe2.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (36, N'Tai nghe HyperX Cloud Earbuds Pink', 5, 1, 4, 1, N'Đồ dễ vỡ nhẹ tay', N'Mỹ ', N'Mic có khả năng khử ồn và thu âm thanh chất lượng cao', N'/image/tainghe3.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (37, N'Tai nghe Logitech G535 LIGHTSPEED', 5, 1, 4, 1, N'Đồ dễ vỡ nhẹ tay', N'Mỹ ', N'Không dây LIGHTSPEED USB receiver', N'/image/tainghe4.jpg')
INSERT [dbo].[sanphams] ([ma_sp], [ten_sp], [ma_gia], [ma_ncc], [ma_danh_muc], [trang_thai], [ghi_chu], [xuat_xu], [mo_ta], [hinh_anh]) VALUES (38, N'Tai nghe Razer Baracuda X', 5, 1, 4, 1, N'Đồ dễ vỡ nhẹ tay', N'Mỹ ', N'MICROPHONE FREQUENCY RESPONSE', N'/image/tainghe5.jpg')
SET IDENTITY_INSERT [dbo].[sanphams] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadons](
	[ma_hd] [int] IDENTITY(1,1) NOT NULL,
	[ma_kh] [int] NOT NULL,
	[tong_tien] [int] NOT NULL,
	[trang_thai] [int] NOT NULL,
	[ghi_chu] [nvarchar](max) NULL,
	[ngay_tao] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.hoadons] PRIMARY KEY CLUSTERED 
(
	[ma_hd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[hoadons] ON
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (22, 2, 327000, 1, N'140 Lê Trọng Tấn, Phường Tây Thạnh, quận Tân Phú, Thành phố Hồ Chí Minh.', CAST(0x0000AC9200D0E3D0 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (23, 3, 74000, 1, N'140 Lê Trọng Tấn, Phường Tây Thạnh, quận Tân Phú, Thành phố Hồ Chí Minh.', CAST(0x0000AC9200D12E11 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (24, 5, 650000, 1, N'140 Lê Trọng Tấn, Phường Tây Thạnh, quận Tân Phú, Thành phố Hồ Chí Minh.. 0333333333', CAST(0x0000AC9800D403FD AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (25, 6, 427000, 1, N'Cổ Nhuế. 0336378689', CAST(0x0000AC9800D558C6 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (26, 7, 87000, 1, N'Cổ Nhuế. 0336378689', CAST(0x0000AC9800D5C837 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (27, 7, 133000, 1, N'140 Lê Trọng Tấn, Phường Tây Thạnh, quận Tân Phú, Thành phố Hồ Chí Minh. 0444444444', CAST(0x0000AC9800D5EAF8 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (28, 7, 300000, 1, N'Cổ', CAST(0x0000AC9800D603E8 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (29, 7, 48000, 1, N'Đức Thắng. 0336378689', CAST(0x0000AC9800D6292D AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (30, 7, 900000, 1, N'Ao Cầu Vồng. 0336378689', CAST(0x0000AC9800D671A6 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (32, 2, 520000, 1, N'Phố Viên. 0336378689', CAST(0x0000AC9800D64D2A AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (31, 7, 10000000, 1, N'phường Tân Tạo, quận Bình Tân, TP.HCM', CAST(0x0000AC9800D6A0B7 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (33, 2, 360000, 1, N'140 Lê Trọng Tấn, Phường Tây Thạnh, quận Tân Phú, Thành phố Hồ Chí Minh. 0777777777', CAST(0x0000AC9800D8DEE5 AS DateTime))
INSERT [dbo].[hoadons] ([ma_hd], [ma_kh], [tong_tien], [trang_thai], [ghi_chu], [ngay_tao]) VALUES (34, 2, 686000, 1, N'140 Lê Trọng Tấn, Phường Tây Thạnh, quận Tân Phú, Thành phố Hồ Chí Minh. 0999999999', CAST(0x0000AC98011BB2E5 AS DateTime))
SET IDENTITY_INSERT [dbo].[hoadons] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadons](
	[ma_hd_chi_tiet] [int] IDENTITY(1,1) NOT NULL,
	[ma_hd] [int] NOT NULL,
	[ma_san_pham] [int] NOT NULL,
	[so_luong] [int] NOT NULL,
	[gia_goc] [int] NOT NULL,
	[gia_khuyen_mai] [int] NOT NULL,
 CONSTRAINT [PK_dbo.chitiethoadons] PRIMARY KEY CLUSTERED 
(
	[ma_hd_chi_tiet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chitiethoadons] ON
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (16, 22, 4, 3, 120000, 100000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (17, 22, 8, 3, 10000, 9000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (18, 23, 23, 4, 16000, 12000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (19, 23, 27, 1, 30000, 26000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (21, 24, 24, 3, 30000, 26000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (22, 24, 4, 5, 120000, 100000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (23, 25, 4, 4, 120000, 100000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (24, 25, 28, 3, 10000, 9000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (25, 26, 20, 4, 15000, 12000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (26, 26, 28, 3, 10000, 9000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (27, 26, 18, 1, 15000, 12000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (29, 27, 21, 1, 10000, 9000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (30, 27, 17, 1, 120000, 100000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (31, 28, 4, 3, 120000, 100000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (32, 29, 28, 4, 10000, 9000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (33, 29, 20, 1, 15000, 12000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (34, 30, 27, 20, 30000, 26000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (35, 31, 8, 100, 10000, 9000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (36, 32, 4, 100, 120000, 100000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (37, 33, 5, 4, 100000, 90000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (38, 34, 21, 4, 10000, 9000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (39, 34, 5, 5, 100000, 90000)
INSERT [dbo].[chitiethoadons] ([ma_hd_chi_tiet], [ma_hd], [ma_san_pham], [so_luong], [gia_goc], [gia_khuyen_mai]) VALUES (40, 34, 4, 2, 120000, 100000)
SET IDENTITY_INSERT [dbo].[chitiethoadons] OFF

ALTER TABLE [dbo].[chitiethoadons] ADD  DEFAULT ((0)) FOR [gia_goc]
GO

ALTER TABLE [dbo].[chitiethoadons] ADD  DEFAULT ((0)) FOR [gia_khuyen_mai]
GO

ALTER TABLE [dbo].[khachhangs] ADD  DEFAULT ('') FOR [UserName]
GO

ALTER TABLE [dbo].[chitiethoadons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.chitiethoadons_dbo.hoadons_ma_hd] FOREIGN KEY([ma_hd])
REFERENCES [dbo].[hoadons] ([ma_hd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitiethoadons] CHECK CONSTRAINT [FK_dbo.chitiethoadons_dbo.hoadons_ma_hd]
GO

ALTER TABLE [dbo].[chitiethoadons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.chitiethoadons_dbo.sanphams_ma_san_pham] FOREIGN KEY([ma_san_pham])
REFERENCES [dbo].[sanphams] ([ma_sp])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitiethoadons] CHECK CONSTRAINT [FK_dbo.chitiethoadons_dbo.sanphams_ma_san_pham]
GO

ALTER TABLE [dbo].[hoadons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.hoadons_dbo.khachs_ma_kh] FOREIGN KEY([ma_kh])
REFERENCES [dbo].[khachs] ([id_Khach])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hoadons] CHECK CONSTRAINT [FK_dbo.hoadons_dbo.khachs_ma_kh]
GO

ALTER TABLE [dbo].[sanphams]  WITH CHECK ADD  CONSTRAINT [FK_dbo.sanphams_dbo.danhmucs_ma_danh_muc] FOREIGN KEY([ma_danh_muc])
REFERENCES [dbo].[danhmucs] ([ma_danh_muc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sanphams] CHECK CONSTRAINT [FK_dbo.sanphams_dbo.danhmucs_ma_danh_muc]
GO

ALTER TABLE [dbo].[sanphams]  WITH CHECK ADD  CONSTRAINT [FK_dbo.sanphams_dbo.gias_ma_gia] FOREIGN KEY([ma_gia])
REFERENCES [dbo].[gias] ([ma_gia])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sanphams] CHECK CONSTRAINT [FK_dbo.sanphams_dbo.gias_ma_gia]
GO

ALTER TABLE [dbo].[sanphams]  WITH CHECK ADD  CONSTRAINT [FK_dbo.sanphams_dbo.nhacungcaps_ma_ncc] FOREIGN KEY([ma_ncc])
REFERENCES [dbo].[nhacungcaps] ([ma_nha_cung_cap])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sanphams] CHECK CONSTRAINT [FK_dbo.sanphams_dbo.nhacungcaps_ma_ncc]
GO
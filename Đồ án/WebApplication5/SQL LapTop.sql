create database QL_CHLapTop
go
use QL_CHLapTop
go

create table Loai
(
	MaLoai int,
	TenLoai nvarchar(10),
	Note nvarchar(10),
	primary key (MaLoai),
)
go
create table SanPham
(
	MaSP nvarchar(10),
	TenSP nvarchar(50),
	GiaBan money,
	MoTa nvarchar(200),
	AnhBia nvarchar(30),
	SoLuongTon int,
	MaLoai int,
	constraint pk_laptop primary key (MaSP),
	constraint fk_Loai foreign key (MaLoai) references Loai(MaLoai)
)
go
create table KhachHang
(
	MaKH int identity(1,1) primary key,
	TenKH nvarchar(30),
	DiaChi nvarchar(50),
	DienThoai nvarchar(13),
	TenTK nvarchar(20),
	MK nvarchar(20),
)
go
create table DonHang
(
	MaDH nvarchar(10),
	NgayGiao date,
	NgayDat	date,
	DaThanhToan nvarchar(20),
	TinhTrangGiaoHang nvarchar(20),
	MaKH int,
	constraint pk_donhang primary key (MaDH),
	constraint fk_donhang foreign key (MaKH) references KhachHang(MaKH)
)
go
create table ChiTietDH
(
	MaDH nvarchar(10),
	MaSP nvarchar(10),
	SoLuong int,
	DonGia money,
	constraint pk_chitietdh primary key (MaDH,MaSP),
	constraint fk_chitietdh_madh foreign key (MaDH) references DonHang(MaDH),
	constraint fk_chitietdh_malt foreign key (MaSP) references SanPham(MaSP)
)
go
select *from SanPham
select *from KhachHang
select *from DonHang
select *from ChiTietDH
go
create table LoaiTin
(
	MaLoai int,
	TLTin nvarchar(50),
	constraint pk_MaLoai primary key (MaLoai),
)
go
create table TinTuc
(
	MaTT nvarchar(20),
	TieuDe nvarchar(max),
	NoiDung nvarchar(max),
	NgayDang date,
	AnhMH nvarchar(20),
	MaLoai int,
	constraint pk_MaTT primary key (MaTT),
	constraint fk_maloai foreign key (MaLoai) references LoaiTin(MaLoai)
)
go
--SET IDENTITY_INSERT KhachHang On
--go
select *from TinTuc
select *from LoaiTin
INSERT INTO LoaiTin VALUES
(1,N'Congnghe'),
(2,N'Doisong')
go
INSERT INTO TinTuc VALUES
('TT1',N'Sable đang miễn phí trên Epic, mời bạn tải về phiêu lưu xứ sở cát vàng',N'Ngay từ những giờ phút đầu tiên, thế giới mở trong Sable đã tạo được ấn tượng mạnh trong tâm trí người chơi. Mặc dù có bối cảnh trên sa mạc, cảnh tượng trong Sable lại vô cùng mãn nhãn luôn nhé, nếu không muốn nói là phong cách đồ họa trong game này độc nhất vô nhị, hiếm có trò nào làm được như vậy. Bạn sẽ được ngồi lên chiếc xe của mình và lao vun vút từ thị trấn này qua thị trấn nọ, tạm cảm giác vô cùng phấn khích. Ngoài ra, Sable còn có rất nhiều nhiệm vụ cho bạn tha hồ khám phá vùng đất xung quanh mình. Những nhiệm vụ này đều có mục đích hẳn hoi, chứ không phải chỉ để thêm vào cho có đâu nhé. Sable sẽ là một trong những tựa game cho bạn cảm giác thỏa mãn với thời gian mà bạn đã bỏ ra.','12/18/2021','tintuc1.jpg',2),
('TT2',N'Elon Musk đăng đàn nhờ người dùng Twitter bỏ phiếu xem ông có nên từ chức CEO hay không',N'Cũng không lạ gì mấy khi đa phần người dùng Twitter đều muốn Elon Musk từ chức CEO. Sau khi áp dụng một số thay đổi vô tiền khoáng hậu đối với chính sách công ty, Elon Musk đã lên Twitter tạo 1 cuộc bỏ phiếu bình chọn (poll). Mục đích của Musk là hỏi người dùng Twitter xem ông có nên từ chức CEO công ty hay không. Đồng thời, ông cũng nhấn mạnh rằng ông sẽ làm theo kết quả của cuộc bầu chọn này.','9/8/2022','tintuc2.jpg',2),
('TT3',N'Cái gì cũng phải đến tay fan, đồ họa GTA Vice City lột xác ngoạn mục bằng sức mạnh Unreal Engine 5',N'GTA: Vice City là một trong những phần hay nhất trong series, tuy nhiên chúng ta không thể phủ nhận việc đồ họa của nó ở thời điểm này có thể nói là đã lỗi thời rồi. Bên cạnh đó, có vẻ như Rockstar dường như cũng không có ý định phát triển một bản remake hoàn chỉnh cho tựa game này. Vì vậy chúng ta phải đành nhờ vào những người fan siêng năng, và có đam mê để có thể hình dung được Vice City sẽ trông như thế nào khi được phát triển bằng công nghệ hiện đại. Mới đây, kênh Youtube TeaserPlay đã đăng một video cho thấy phân cảnh mở đầu của Vice City được mô phỏng lại bằng công nghệ Unreal Engine 5. Chỉ cần coi từ những phút giây đầu tiên của video, chúng ta đã thấy các công nghệ Lumen và Nanite đã làm cho mọi thứ trông thật hoàn hảo, với camera anamorphic và quang sai màu mang lại một cảm giác như những bộ phim thập niên 80.','1/1/2021','tintuc3.jpg',1),
('TT4',N'The Witcher 4 ra mắt xong thì The Witcher Remake mới trình làng, có điều chúng ta chẳng biết khi đó là khi nào',N'Hiện tại thì The Witcher 4 vẫn chưa biết khi nào mới hoàn thành, còn The Witcher remake thì chắc sẽ phải đợi còn lâu hơn nữa. Hồi tháng 10 vừa qua thì CD Projekt Red đã cho biết phần game The Witcher đầu tiên sẽ được remake hoàn toàn. Nhưng mà nếu bạn đang hào hứng để xem lại từ đầu cuộc phiêu lưu của Geralt thì hãy kiềm hãm lại một chút nhé, vì mới đây họ đã cho biết là phải đến sau khi The Witcher 4 ra mắt xong xuôi rồi thì họ mới tính đến The Witcher remake.','10/10/2022','tintuc4.jpg',1),
('TT5',N'Nvidia cà khịa AMD tung driver beta rất nhiều mà driver chính thức thì chẳng được bao nhiêu',N'Có vẻ Nvidia thấy rằng việc họ tung càng nhiều driver chính thức, hỗ trợ càng nhiều game, hạn chế tối đa driver beta thì sẽ càng tốt hơn so với AMD và Intel. Sean Pelletier – Quản lý sản phẩm cấp cao của Nvidia – vừa mới có 1 pha “đâm chọt” AMD lẫn Intel bằng 1 cái bảng Excel, cho thấy đội ngũ phát triển driver của Nvidia chất lượng hơn hẳn so với các đối thủ. Cụ thể, trang tính này ghi số lượng các bản driver đạt chuẩn (non-beta) mà Nvidia đã phát hành trong vòng 2 năm qua, cũng như là số lượng game mà nó tối ưu so với AMD và Intel. Đoạn tweet này phê bình Intel và AMD một cách nhẹ nhàng và tinh tế về việc 2 hãng này ít tung ra driver cập nhật cho GPU của họ, đồng thời ám chỉ 1 điều rằng chất lượng driver của 2 hãng này không thật sự tốt cho lắm. Đây là lần thứ 2 trong năm 20222 mà Nvidia đã “cà khịa” các đối thủ của họ về việc cập nhật driver GPU. Trước đó, Nvidia đã tự hào rằng họ không hề tung ra driver beta (thử nghiệm) làm chi, vì chất lượng của nó dưới mức trung bình và chỉ được test rất ít. Rõ ràng đây là 1 cú đâm khá mạnh vào AMD, do đội đỏ thường có xu hướng tung ra driver beta rất nhiều.','6/8/2021','tintuc5.jpg',1)
go
INSERT INTO Loai VALUES
(1,'Gaming','Lap'),
(2,N'Văn Phòng','Lap'),
(3,N'Đồ Hoạ','Lap'),
(4,N'Bàn Phím','PK'),
(5,N'Chuột','PK'),
(6,N'Tai Nghe','PK')
go
INSERT INTO SanPham VALUES 
('GM01','Laptop Asus TUF A15 2022',22800000,'Asus TUF A15 FA507RE-A15.R73050T 2022 (Ryzen 7-6800H, 8GB, 512GB, RTX 3050 Ti 4GB, 15.6” FHD)','gaming1.1.jpg',10,1),
('GM02','Laptop Acer Nitro 5 2022',21400000,'Nitro 5 2022 AN515-58 (Core i5 - 12500H, 16GB, 512GB, RTX 3050Ti, 15.6" FHD IPS 144Hz)','gaming2.1.jpg',10,1),
('GM03','Lenovo Legion R9000X',20700000,'Lenovo Legion R9000X (Ryzen 7 - 5800H, 16GB, 512GB, RTX 3060, 15.6'' WQXGA 165Hz)','gaming3.1.jpg',10,1),
('GM04','Dell Gaming G15 2022',19200000,'Dell Gaming G15 5525 (Ryzen 7-6800H, 16GB, 512GB, NVIDIA RTX 3050Ti 4GB, 15.6'' FHD 120Hz)','gaming4.1.jpg',10,1),
('LI01','Lenovo IdeaPad 5 Pro 16ACH6',2200000,'Lenovo IdeaPad 5 Pro 16ACH6 (Ryzen 5-5600H, 8GB, 512GB, 16.0" WQXGA IPS, Storm Gray)','vanphong1.1.jpg',10,2),
('LI02','Dell Inspiron 16 5620',19070000,'Dell Inspiron 16 5620 (Core i7-1260P, 16GB, 512GB, Iris Xe Graphics, 16" FHD+ WVA)','vanphong2.1.jpg',10,2),
('LI03','Asus Zenbook 14 Q409 ZA',20708000,'Asus Zenbook 14 Q409 ZA (Core i5-1240P, 8GB, 256GB, 14.0'' 2K+ OLED 90Hz)','vanphong3.1.jpg',10,2),
('LI04','Acer Aspire 1 A115-32',18070000,'Acer Aspire 1 A115-32 (Celeron - N4500, 4GB, 128GB, 15.6'' FHD)','vanphong4.1.jpg',10,2),
('DH01','Laptop Dell Precision 7550',19800000,'Laptop Dell Precision 7550 (Core i7-10750H, 16GB, 256GB, VGA NVIDIA Quadro T2000, 15.6 inch FHD IPS)','dohoa1.1.jpg',10,3),
('DH02','Laptop LENOVO ThinkPad P1 Gen 3',23070000,'Laptop Lenovo ThinkPad P1 Gen 3 Core i7-10750H, 8GB, 256GB, NVIDIA® Quadro T1000 4GB Max-Q, 15.6 FHD IPS','dohoa2.1.jpg',10,3),
('DH03','Dell Alienware X17 R2',25070000,'Dell Alienware X17 R2 (Core i7-12700H, 32GB, 1TB, VGA RTX 3070Ti, 17.3 inch FHD 165Hz)','dohoa3.1.jpg',10,3),
('DH04','Laptop HP Victus 16',24079000,'Laptop Gaming HP Victus 16-e0175AX 4R0U8PA (AMD Ryzen 5-5600H, 8GB, 512GB, RTX 3050 4GB, 16.1 FHD 144Hz)','dohoa4.1.jpg',10,3),
('BP01',N'Bàn phím AKKO ACR Pro 68',2390000,N'1 Dây cáp USB Type-C 2 Type-A + 01 set keycap tặng kèm','banphim1.jpg',20,4),
('BP02',N'Bàn phím AKKO PC75B Plus Year of Tiger',2390000,N'1 sách hướng dẫn sử dụng + 1 dây USB Type-C to USB + 1 USB Receiver 2.4Ghz + 1 Nắp nhựa che bụi phím','banphim2.jpg',15,4),
('BP03',N'Bàn phím cơ AKKO 3098N Multi-modes Black Gold',2490000,N'1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 dây cáp USB + 20 keycap tặng kèm + USB Receiver 2.4Ghz','banphim3.jpg',10,4),
('BP04',N'Bàn phím cơ Logitech G713 RGB TKL Tactile',3690000,N'Bàn phím chơi game G713 Dây USB C tới USB A - 1,8M Kê tay','banphim4.jpg',25,4),
('BP05',N'Bàn phím không dây Logitech MX Keys Min',1690000,N'Tương thích với chuột hỗ trợ Logitech Flow Khuyến cáo nên sử dụng cùng chuột MX Anywhere','banphim5.jpg',10,4),
('CH01',N'Chuột Fuhlen D90S',550000,N'Thiết kế đối xứng phù hợp cho người thuận cả tay trái và tay phải','chuot1.jpg',18,5),
('CH02',N'Chuột Logitech G Pro X',3090000,N'không dây LIGHTSPEED','chuot2.jpg',18,5),
('CH03',N'Chuột Logitech G502 X Plus',190000,N'Công nghệ không dây LIGHTSPEED','chuot3.jpg',30,5),
('CH04',N'Chuột Logitech POP',590000,N'Theo dõi quang học có độ chính xác cao của Logitech','chuot4.jpg',20,5),
('CH05',N'Chuột Logitech G502 X Plus',1190000,N'LIGHTFORCE - switch lai Quang - Cơ','chuot5.jpg',18,5),
('TN01',N'Tai nghe AOC GH210',590000,N'Boom mic có thể tháo rời; Bộ điều khiển nội tuyến','tainghe1.jpg',18,6),
('TN02',N'Tai nghe Corsair HS80 RGB Wireless',2690000,N'Phần mềm CUE âm thanh: Được hỗ trợ trong iCUE','tainghe2.jpg',19,6),
('TN03',N'Tai nghe HyperX Cloud Earbuds Pink',890000,N'Mic có khả năng khử ồn và thu âm thanh chất lượng cao','tainghe3.jpg',22,6),
('TN04',N'Tai nghe Logitech G535 LIGHTSPEED',2890000,N'Không dây LIGHTSPEED USB receiver','tainghe4.jpg',20,6),
('TN05',N'Tai nghe Razer Baracuda X',1590000,N'MICROPHONE FREQUENCY RESPONSE','tainghe5.jpg',16,6)
go
INSERT INTO KhachHang VALUES
(N'Địch Lệ Nhiệt Ba',N'Tân Cương','18181822','mannhi','111111'),
('Hande Ercel','Bandırma','26857555','behai','22222222'),
('Lisa','Satuek','38256244','coba','333333'),
('Nancy','Daegu','46558234','chitu','444444'),
(N'Trình Tiêu',N'Thâm Quyến','56777555','thiemnam','555555'),
('jennie','Cheongdam','66777666','disau','666666')
go
INSERT INTO DonHang VALUES
('HD01','12/22/2022','11/11/2022',N'Đã Thanh Toán',N'Đang Giao',1),
('HD02','11/29/2022','10/15/2022',N'Đã Thanh Toán',N'Chưa Giao',2),
('HD03','01/02/2023','11/29/2022',N'Đã Thanh Toán',N'Đang Giao',3),
('HD04','12/29/2022','11/22/2022',N'Chưa Thanh Toán',N'Chưa Giao',4),
('HD05','11/30/2022','09/10/2022',N'Đã Thanh Toán',N'Đang Giao',5),
('HD06','10/29/2022','07/22/2022',N'Đã Thanh Toán',N'Đã Giao',6)
go
INSERT INTO ChiTietDH VALUES
('HD03','GM01',2,45600000),
('HD01','DH04',1,24079000),
('HD06','LI03',1,20708000),
('HD05','DH02',1,23070000),
('HD02','GM04',1,19200000)
go

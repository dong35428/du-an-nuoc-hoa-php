-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 12, 2024 lúc 04:22 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `bill_name` varchar(200) NOT NULL,
  `bill_address` varchar(200) NOT NULL,
  `bill_tel` varchar(50) NOT NULL,
  `bill_email` varchar(200) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.Đang chờ 2.Đang giao hàng 3.Đã giao hàng',
  `total` int(10) NOT NULL,
  `bill_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0.Đơn hàng mới 1.Đang chờ 2.Đang giao hàng 3.Đã giao hàng',
  `receive_name` varchar(200) DEFAULT NULL,
  `receive_address` varchar(200) DEFAULT NULL,
  `receive_tel` varchar(50) DEFAULT NULL,
  `ngaydathang` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(200) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(2, 'fgf', 3, 27, '08:03:04pm 18/10/2023'),
(3, 'dfsf', 3, 27, '08:07:36pm 18/10/2023'),
(5, 'tốt ', 3, 14, '02:44:27pm 23/10/2023'),
(6, 'sdgfsdg', 3, 25, '01:08:03pm 24/10/2023'),
(7, 'jytrj', 3, 25, '01:08:12pm 24/10/2023'),
(8, 'vdkjahsg', 3, 26, '01:23:32pm 24/10/2023'),
(9, 'sdf', 3, 26, '01:23:35pm 24/10/2023'),
(10, 'skfjh', 3, 28, '01:23:50pm 24/10/2023'),
(11, 'đồng hồ xịn', 3, 28, '01:23:56pm 24/10/2023'),
(12, 'áds', 0, 27, '06:11:44pm 11/12/2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` int(10) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(3, 'Đồng Hồ'),
(9, 'Điện thoạ'),
(10, 'Laptop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `img` varchar(200) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `iddm` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(16, 'IPHONE 15', 2000.00, '15pro2.webp', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', 0, 9),
(20, 'IPhone X', 5.00, '15plus3.webp', 'Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh\r\nChiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\r\nNâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video\r\nThiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế', 0, 9),
(21, 'IPhone', 235.00, '153.webp', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', 0, 9),
(22, 'IPhone', 234.00, '152.webp', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', 0, 10),
(23, 'IPhone', 235.00, '15pro3.webp', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', 0, 10),
(24, 'Laptop A', 235.00, 'laptop-under-500-2048px-acer-1.jpg', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', 0, 10),
(25, 'Macbool', 4534.00, 'macbook-air-m1-2020-gray-600x600.jpg', 'Sở hữu thiết kế cá tính với họa tiết bắt mắt được khắc lên mặt A\r\nMàn hình OLED15.6 inch cùng tần số quét 120 Hz cực nhanh\r\nCPU Intel Core i5-13500H xử lý nhanh chóng mọi tác vụ văn phòng \r\nRAM 16GB giúp xử lý các tác vụ nặng và chạy nhiều ứng dụng cùng lúc mượt mà\r\nDung lượng SSD 512 GB đủ để lưu trữ các tập tin và dữ liệu cần thiết', 0, 10),
(26, 'Acer', 344.00, 'Tivi-Smart-43inch-VTC-NOW-VR-43AF6800.jpg', '', 0, 10),
(27, '', 3244.00, 'pinkclock.jfif', 'Tập luyện thả ga - 117 chế độ thể thao, 19 chế độ chuyên nghiệp\r\nKết nối không ngừng - Nhận cuộc gọi thông qua kết nối bluetooth với điện thoại\r\nTích hợp GPS - Ghi lại quãng đường luyện tập tốt hơn\r\nHoạt động bền bỉ - 12 ngày ở chế độ thông thường\r\nHiển thị sắc nét - Màn hình Amoled 1.43 inch rực rỡ, không ngại nắng chói', 0, 3),
(28, 'Đồng hồ xịn', 3252.00, 'blackclock.jpeg', 'Đồnghồ rất xịn', 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `user` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(3, 'ph35428', '123456', 'pinocchio2k4@gmail.com', 'anbinh', '0393815392', 1),
(6, 'dongph35428', '123456', 'donglvph35428@fpt.edu.vn', 'fpt', '0393815392', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_cart_bill` (`idbill`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `lk_cart_bill` FOREIGN KEY (`idbill`) REFERENCES `bill` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

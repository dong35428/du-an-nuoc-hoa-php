-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 14, 2024 lúc 11:45 AM
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
-- Cơ sở dữ liệu: `duan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id_bl` int(10) NOT NULL,
  `noidung` varchar(200) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `thoigian` varchar(200) NOT NULL,
  `ten` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_dh` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.Đang chờ 2.Đang giao hàng 3.Đã giao hàng',
  `tongdonhang` int(10) NOT NULL,
  `bill_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0.Đơn hàng mới 1.Đang chờ 2.Đang giao hàng 3.Đã giao hàng',
  `ngaydathang` varchar(500) NOT NULL,
  `id_kh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id_dh`, `name`, `address`, `sdt`, `email`, `pttt`, `tongdonhang`, `bill_status`, `ngaydathang`, `id_kh`) VALUES
(38, 'dongph35428', 'PFT polytechnic', '0393815392', 'donglvph35429@fpt.edu.vn', 1, 2450000, 3, '08:44:48pm 04/12/2023', 7),
(39, 'dong', 'PFT polytechnic', '0093815392', 'pinocchio2k4@gmail.com', 1, 13600002, 0, '01:44:07am 05/12/2023', 23),
(43, 'Lê Văn Đông', 'PFT polytechnic', '0093815392', 'Levandong2k4@gmail.com', 1, 18550000, 2, '02:05:55pm 11/12/2023', 29),
(44, 'dongph35428', 'PFT polytechnic', '0393815392', 'donglvph35429@fpt.edu.vn', 1, 3900000, 0, '07:30:10pm 11/12/2023', 7),
(45, 'dongph35428', 'PFT polytechnic', '0393815392', 'donglvph35429@fpt.edu.vn', 1, 3400000, 2, '07:30:35pm 11/12/2023', 7),
(46, 'dong123', 'PFT polytechnic', '0093815392', 'pinocchio2k4@gmail.com', 1, 15600000, 2, '12:43:21am 12/12/2023', 30),
(47, 'dongph354284564', 'PFT polytechnic', '0393815392', 'donglvph35429@fpt.edu.vn', 1, 27000000, 3, '01:30:11am 12/12/2023', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id_gh` int(10) NOT NULL,
  `id_kh` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `img` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id_gh`, `id_kh`, `id_sp`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(59, 7, 39, 'Rectangle 229nhnam-10.png', 'Jean Paul Gaultier Le Male Elixir', 3000000, 1, 3000000, 35),
(60, 7, 38, 'Rectangle 229-2.png', 'Elizabeth Arden White Tea', 1300000, 1, 1300000, 35),
(61, 7, 31, 'Rectangle 229-4.png', 'Hermes Twilly Tutti', 2850000, 1, 2850000, 36),
(62, 7, 38, 'Rectangle 229-2.png', 'Elizabeth Arden White Tea', 1300000, 1, 1300000, 36),
(63, 7, 23, 'Rectangle 229nhnam-9.png', 'Lalique Encre Noire A L’Extreme', 2, 1, 2, 37),
(64, 7, 37, 'Rectangle 229-11.png', 'Dolce&Gabbana Light Blue Summer Vibes Pour Femme', 2450000, 1, 2450000, 38),
(65, 23, 40, 'Rectangle 229-4.png', 'Gift Set Burberry Her EDP', 3400000, 3, 10200000, 39),
(66, 23, 40, 'Rectangle 229-4.png', 'Gift Set Burberry Her EDP', 3400000, 1, 3400000, 39),
(67, 23, 22, 'Rectangle 229nhnam-11.png', 'Lalique Encre Noire Sport', 2, 1, 2, 39),
(69, 7, 40, 'Rectangle 229-4.png', 'Gift Set Burberry Her EDP', 3400000, 1, 3400000, 41),
(70, 7, 39, 'Rectangle 229nhnam-10.png', 'Jean Paul Gaultier Le Male Elixir', 3000000, 1, 3000000, 41),
(71, 29, 80, 'set11.png', 'Gift Set Burberry Her EDP', 3400000, 1, 3400000, 43),
(72, 29, 79, 'set10.png', 'Gift Set Jean Paul Gaultier Scandal', 3250000, 3, 9750000, 43),
(73, 29, 51, 'un8.png', 'Mancera Roses and Chocolate', 2700000, 2, 5400000, 43),
(74, 7, 81, 'set12.png', 'Set YSL Yves Saint Laurent Black Opium', 3900000, 1, 3900000, 44),
(75, 7, 80, 'set11.png', 'Gift Set Burberry Her EDP', 3400000, 1, 3400000, 45),
(76, 30, 81, 'set12.png', 'Set YSL Yves Saint Laurent Black Opium', 3900000, 1, 3900000, 46),
(77, 30, 81, 'set12.png', 'Set YSL Yves Saint Laurent Black Opium', 3900000, 3, 11700000, 46),
(78, 7, 53, 'un-1.png', 'Xerjoff 1861 Decas', 5400000, 5, 27000000, 47);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `id_dm` int(11) NOT NULL,
  `name_dm` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`id_dm`, `name_dm`) VALUES
(19, 'Nước Hoa Nam'),
(20, 'Nước Hoa Nữ'),
(21, 'Nước Hoa Unisex'),
(22, 'Son Môi Chính Hãng'),
(24, 'Sản Phẩm Nổi Bật'),
(26, 'Set Nước Hoa'),
(29, '533');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(10) NOT NULL,
  `ten_sp` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `id_dm` int(10) NOT NULL,
  `luotxem` int(10) NOT NULL,
  `gia_cu` float NOT NULL,
  `gia_moi` float NOT NULL,
  `mota` varchar(1000) NOT NULL,
  `chitiet` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `ten_sp`, `img`, `id_dm`, `luotxem`, `gia_cu`, `gia_moi`, `mota`, `chitiet`) VALUES
(13, 'Lacoste L.12.12 Blanc Eau De Parfum', 'Rectangle 229nhnam.png', 19, 0, 2800000, 2550000, 'Lacoste L.12.12 Blanc Eau De Parfum là một minh chứng thực sự cho di sản của thương hiệu về việc tạo ra những mùi hương tinh vi vượt thời gian. Hương thơm này pha trộn một cách thuần thục những nốt hư', 'Nhóm nước hoa: Hương gỗ thơm\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2021\r\n\r\nNồng độ: Eau De Parfum (EDP)\r\n\r\nPhong Cách: Mạnh Mẽ, Cuốn Hút, Hiện Đại.\r\n\r\nHương Đầu: Cây xanh, Thảo dược, Vôi Axit\r\n\r\nHương giữa'),
(14, 'Roja Reckless Parfum Pour Homme', 'Rectangle 229nhnam-1.png', 19, 0, 11000000, 8600000, 'Roja Reckless Parfum Pour Homme có lẽ là mùi hương đương đại dành cho nam cứng cỏi và chuẩn chỉnh nam tính nhất trong số kha khá các cực phẩm nước hoa nam trong vũ trụ thơm Roja Dove.\r\nKhông rượu thuố', 'Nhóm nước hoa: Hương Hoa Cỏ Síp\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2014\r\n\r\nNồng độ: Parfum\r\n\r\nPhong Cách: Sang Trọng, Thu Hút, Nổi Bật\r\n\r\nHương đầu: Cam Bergamot, Hoa Oải Hương, Lá nguyệt quế, Quả chanh'),
(15, 'Lacoste Eau de Lacoste L.12.12 Blanc Pure Gift Set', 'Rectangle 229nhnam-3.png', 19, 0, 2750000, 2450000, 'Huyền thoại “Thỏi Vàng” được tái sinh với mùi hương ấm ngọt đặc trưng của dòng 1 Million, lần này nét ngọt được làm đầm hơn, dễ chịu hơn, có chiều sâu hơn và bật lên rõ tông vị của amber và gỗ.\r\nPaco ', 'Nhóm nước hoa: Nhóm hương Gỗ – Hổ phách\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: Parfum\r\n\r\nPhong Cách: Sang Trọng, Mạnh Mẽ, Lôi Cuốn\r\n\r\nHương đầu: Hoa cam, Quả quýt, Quả cam, Gabanum\r\nHương g'),
(16, 'Tom Ford Grey Vetiver Parfum', 'Rectangle 229nhnam-2.png', 19, 0, 4500000, 4100000, 'Tom Ford Grey Vetiver Parfum được mô tả như một sự lặp lại táo bạo hơn của bản gốc, ???????????????? ???????????????????????????? ???????????????????????? được lấy cảm hứng từ phong cách và thiết kế h', 'Nhóm nước hoa: Hương gỗ cay nồng\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: Parfum\r\n\r\nPhong Cách: Sang Trọng, Tinh Tế, Mạnh Mẽ\r\n\r\nHương đầu: Hoa cam.\r\nHương giữa: Saffron\r\nHương cuối: Cỏ vetive'),
(17, 'Jean Paul Gaultier Le Male Elixir', 'Rectangle 229nhnam-4.png', 19, 0, 3800000, 3300000, 'Mở đầu, Jean Paul Gaultier Le Male Elixir đã khiến bất cứ ai lướt qua phải ấn tượng với hình ảnh anh chàng toát nên vẻ đẹp nam tính, hấp dẫn và bốc lửa ngay từ ánh nhìn đầu tiên với sự xuất hiện của b', 'Nhóm nước hoa: Hương dương xỉ phương đông\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: EDP\r\n\r\nPhong Cách: Hấp dẫn, Mạnh mẽ, Sang trọng\r\n\r\nHương đầu: Hoa oải hương, Bạc hà\r\nHương giữa: Vanilla, Be'),
(18, 'Creed Aventus Absolu', 'Rectangle 229nhnam-5.png', 19, 0, 8800000, 8200000, 'Giai đoạn tiếp diễn thì Creed Aventus Absolu trở nên mềm mại hơn với sự xuất hiện của bạch đậu khấu, quế, gừng và citron. Hương bạch đậu khấu mang lại sự ấm áp và thuần khiết, trong khi quế và gừng đe', 'Nhóm nước hoa: Hương Gỗ Cay Nồng\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: EDP\r\n\r\nPhong Cách: Sang Trọng, Mạnh Mẽ, Ấm Áp\r\n\r\nHương đầu: Nho đen, Bưởi, Cam bergamot\r\n\r\nHương giữa: Gừng, Thảo quả'),
(19, 'Diesel Fuel For Life Pour Homme – Không Túi Vải', 'Rectangle 229nhnam-6.png', 24, 0, 2500000, 1800000, 'Với thiết kế hoang dã độc đáo, Fuel For Life với nghĩa tiếng Việt là “Nguồn nhiên liệu cho cuộc sống”, trong hơn 10 năm qua đã là một item không-thể-thiếu cho các bộ sưu tập mùi hương của chàng bởi vẻ', 'Nhóm nước hoa: Hương Dương Sỉ Phương Đông\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2007\r\n\r\nNồng độ: Eau De Toilette (EDT)\r\n\r\nNhà pha chế: Annick Mernado, Jacques Cavallier\r\n\r\nĐộ lưu hương: 6 giờ đến 8 giờ\r\n\r\n'),
(20, 'Roja Apex', 'Rectangle 229nhnam-7.png', 19, 0, 6900000, 6200000, 'Mở đầu là một vụ nổ zesty Citrus, chúng ta cảm nhận Roja Apex như một luồng không khí trong lành từ sáng sớm khi cảm giác nắng của Mandarin và Dứa.\r\nCùng theo đó là sự hoà quyện của các thành phần tự ', 'Nhóm nước hoa: Hương trái cây thơm ngát\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2022\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong Cách: Cá Tính, Hiện Đại, Mạnh Mẽ\r\n\r\nHương đầu: Cam Bergamot, Quả cam, Quả chanh\r\nHương '),
(21, 'Roja Reckless Parfum Pour Homme', 'Rectangle 229nhnam-10.png', 19, 0, 11000000, 8600000, 'Roja Reckless Parfum Pour Homme có lẽ là mùi hương đương đại dành cho nam cứng cỏi và chuẩn chỉnh nam tính nhất trong số kha khá các cực phẩm nước hoa nam trong vũ trụ thơm Roja Dove.\r\nKhông rượu thuố', 'Nhóm nước hoa: Hương Hoa Cỏ Síp\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2014\r\n\r\nNồng độ: Parfum\r\n\r\nPhong Cách: Sang Trọng, Thu Hút, Nổi Bật\r\n\r\nHương đầu: Cam Bergamot, Hoa Oải Hương, Lá nguyệt quế, Quả chanh'),
(22, 'Lalique Encre Noire Sport', 'Rectangle 229nhnam-11.png', 19, 0, 1850000, 1550000, 'Lalique Encre Noire Sport là mẫu nước hoa thuộc dòng hương gỗ dành cho nam giới và đã được ra mắt vào năm 2013. Nathalie Lorson lại một lần nữa sáng tạo nên mùi hương này giống như đã trước đây đã từn', 'Nhóm nước hoa: Hương Gỗ Thơm Mát\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2013\r\n\r\nNồng độ: Eau de Toilette (EDT)\r\n\r\nPhong Cách: Lịch Lãm, Tươi Mát, Nam Tính\r\n\r\nHương Đầu: Quả bưởi, Cam Bergamot, Nhục đậu khấu'),
(23, 'Lalique Encre Noire A L’Extreme', 'Rectangle 229nhnam-9.png', 19, 0, 1880000, 1950000, 'Lalique Encre Noire A L’Extreme vẫn thuộc nhóm hương Gỗ thơm ngát tương tự như phiên bản gốc trước đây. Thành phần Lalique Encre Noire A L’Extreme được đánh giá là nam tính, mạnh mẽ và rất có chiều sâ', 'Nhóm nước hoa: Woody Aromatic ( Hương Gỗ Thơm, Thảo Mộc)\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2015\r\n\r\nNồng độ: Eau de Parfum (EDP)\r\n\r\nPhong Cách: Mạnh Mẽ, Sang Trọng, Cá Tính\r\n\r\nHương đầu: Cam Bergamot, N'),
(25, 'Hugo Boss Hugo XX', 'Rectangle 229.png', 20, 0, 2450000, 1950000, 'Phiên bản Hugo XX của thương hiệu Hugo dành cho phái nữ thuộc nhóm hương hoa cỏ trái cây thực phẩm. Hugo XX đại diện cho sự chính chắn, quả quyết của người phụ nữ, đồng thời cũng thật nữ tính và mềm m', 'Nhóm nước hoa: Nhóm hương hoa cỏ – Trái cây\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2007\r\n\r\nNồng độ: EDT\r\n\r\nPhong Cách: Sang Trọng, Nữ Tính, Tinh Tế\r\n\r\nHương đầu: Quả vải, Quả lý chua đen, Quả quýt hồng.\r\nHươ'),
(29, 'Hugo Boss Jour Pour Femme', 'Rectangle 229-3.png', 20, 0, 2650000, 2200000, 'Hugo Boss Jour Pour Femme thu hút mọi sự chú ý đầu tiên bằng hương thơm tươi mát đến từ cam quýt, chanh, bưởi chùm đem lại một cảm giá tươi sáng như ánh nắng sáng lấp lánh mùa hè. Khi lớp hương này lắ', 'Nhóm nước hoa: Nhóm hương hoa cỏ\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2013\r\n\r\nNồng độ: EDP\r\n\r\nPhong Cách: Sang Trọng, Tươi Mới, Thu Hút\r\n\r\nHương Đầu: Quả Chanh, Hoa Bưởi\r\nHương Giữa: Hoa Cúc Trắng, Hoa Lan'),
(30, 'Versace Dylan Blue Pour Femme Gift Set', 'Rectangle 229-1.png', 20, 0, 3600000, 2900000, '– Túi Versace Shoulder Bag\r\n– Nước hoa Versace Dylan Blue EDP 100ml.\r\n– Nước hoa mini Versace Dylan Blue EDP 5ml.\r\n– Dưỡng thể nước hoa Versace Body Lotion 100ml.\r\n– Sữa tắm nước hoa Versace Shower Ge', 'Nồng độ : Eau de parfum\r\n\r\nNhóm hương : Hương Hoa cỏ Trái cây – Floral Fruity\r\n\r\nPhong cách : Quyến rũ, tự tin, cuốn hút\r\n\r\nHương đầu: Quả lý chua đua, Quả táo xanh, Cỏ ba lá, Hoa lưu ly, Rau tía tô\r\n'),
(31, 'Hermes Twilly Tutti', 'Rectangle 229-4.png', 20, 0, 3450000, 2850000, 'Năm 2023, nước hoa Hermes Twilly Tutti được sáng tạo ra bởi nhà nước hoa tài năng Christine Nagel. Với sự đam mê và tinh thần nghệ sĩ, Christine đã dành hàng tháng để tạo ra một hương thơm độc đáo và ', 'Nhóm nước hoa: Hương Hoa Cỏ Trái Cây\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: EDP\r\n\r\nPhong Cách: Sang Trọng, Cá Tính, Lôi Cuốn\r\n\r\nHương Đầu: Quả Vải\r\n\r\nHương Giữa: Hoa Gừng\r\n\r\nHương Cuối: Xạ H'),
(32, 'Lacoste Pour Femme', 'Rectangle 229-5.png', 20, 0, 2900000, 2450000, 'Lacoste Pour Femme mở ra một chút chất vị cay nồng mạnh mẽ mang hơi hướng hoa cỏ từ hồ tiêu Jamaica và chiết xuất lan Nam Phi tím gợi nên xúc cảm tươi mới cuốn hút. Tiếp đố Lacoste Pour Femme trở lên ', 'Nhóm nước hoa: Hương hoa cỏ – Gỗ – Xạ hương\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2003\r\n\r\nNồng độ: Eau De Parfum (EDP)\r\n\r\nPhong Cách: Tự Nhiên, Thanh Lịch, Tinh Tế\r\n\r\nHương đầu: Tiêu, Hoa lan, Táo xanh\r\nHươ'),
(33, 'Gift Set Jean Paul Gaultier Scandal 3pcs', 'Rectangle 229-9.png', 20, 0, 3800000, 3250000, 'Cám dỗ là có thật, và Scandal cũng có thật, chỉ là vì bạn chưa thử một lần Scandal lên da của mình mà thôi. Đã có quá nhiều sự ngạc nhiên và bất ngờ về Top note của cô nàng này ngay cú xịt đầu tiên, v', 'Nhãn hiệu: Jean Paul Gaultier\r\n\r\nGiới tính : Nữ\r\n\r\nXuất xứ : Pháp\r\n\r\nNồng độ : Eau de parfum\r\n\r\nPhát hành : 2017\r\n\r\nNhà pha chế : Jean Paul Gaultier\r\n\r\nNhóm hương : Hương Hoa cỏ Síp – Chypre Floral\r\n\r'),
(34, 'Carolina Herrera Good Girl Dazzling Garden', 'Rectangle 229-6.png', 20, 0, 3800000, 3400000, 'Carolina Herrera Good Girl Dazzling Garden mở đầu là hạnh nhân, một mùi thơm độc đáo và phức tạp, tạo nên một lớp nền ấm áp và quyến rũ. Hương đầu này mang đến sự ngọt ngào và bí ẩn, giống như những á', 'Nhóm nước hoa: Hương hoa cỏ phương đông\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: EDP\r\n\r\nĐộ lưu hương: Lâu – 7 giờ đến 12 giờ\r\n\r\nĐộ toả hương: Xa – Toả hương trong vòng bán kính 2 mét\r\n\r\nPhong '),
(35, 'Dolce & Gabbana Q', 'Rectangle 229-7.png', 20, 0, 4850000, 2950000, 'Hương thơm nữ tính mới nhất, Dolce & Gabbana Q vừa được tung ra thị trường, hứa hẹn một phiên bản hương anh đào mới trong “làn sóng hương anh đào” . “Q” vương miện xuất hiện trong một chiếc lọ có hình', 'Nhóm Nước Hoa: Hương Hoa Cỏ – Gỗ – Xạ Hương\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: Eau de Parfum (EDP)\r\n\r\nPhong Cách: Ngọt Ngào, Quyến Rũ, Lôi Cuốn\r\n\r\nHương đầu: Chanh Sicily, cam máu, hoa n'),
(36, 'Narciso Rodriguez All of Me', 'Rectangle 229-10.png', 20, 0, 2450000, 3100000, 'Bạn sẽ thấy Narciso Rodriguez All of Me sôi động, màu sắc và cá tính. Sau 20 năm của Narciso Rodriguez For Her, một lần nữa, bạn thấy hoa hồng nở bừng trong Narciso Rodriguez All of Me. Hoa hồng lúc n', 'Nhóm nước hoa: Hương hoa cỏ – Gỗ – Xạ hương\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: Eau De Parfum (EDP)\r\n\r\nPhong Cách: Cuốn Hút, Nhẹ Nhàng, Thanh Lịch.\r\n\r\nHương đầu: Hoa dành dành\r\n\r\nHương gi'),
(37, 'Dolce&Gabbana Light Blue Summer Vibes Pour Femme', 'Rectangle 229-11.png', 20, 0, 2850000, 2450000, 'Dolce&Gabbana Light Blue Summer Vibes Pour Femme bùng nổ ngay từ giây đầu với những hương cam Bergamot vùng Calabria căng tràn sức sống, một nốt hương nịnh mũi và chưa bao giờ thất bại trong việc làm ', 'Nhóm Nước Hoa: Hương Hoa Cỏ – Gỗ – Xạ Hương\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: Eau de Toilette (EDT)\r\n\r\nPhong Cách: Tươi Mát, Gợi Cảm, Lôi Cuốn\r\n\r\n– Hương Đầu: Cam Bergamot Calabria.\r\n– '),
(38, 'Elizabeth Arden White Tea', 'Rectangle 229-2.png', 20, 0, 1650000, 1300000, 'Trà trắng được xem là thành phần hương chính mang đến cảm giác thuần khiết và tinh tế, không đắng nghét như trà đen, cũng không mát rượi như trà xanh, trà trắng như những cánh trà non tươi mới, thanh ', 'Nhóm nước hoa: Hương hoa cỏ Gỗ Xạ hương\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2017\r\n\r\nNồng độ: Eau de Toilette\r\n\r\nPhong Cách: Tươi Mát, Nhẹ Nhàng, Thu Hút.\r\n\r\nHương đầu: Quả cam, Quả quýt, Cây dương xỉ, Hươ'),
(39, 'Jean Paul Gaultier Le Male Elixir', 'Rectangle 229nhnam-10.png', 19, 0, 3800000, 3000000, 'Tháng 5 năm 2023, một anh chàng thủy thủ mới của nhà Jean Paul Gautier đã được cho ra mắt với tên gọi Le Male Elixir. Đây là hương thơm dành cho nam giới thuộc nhóm hương dương xỉ phương Đông với nhữn', 'Nhóm nước hoa: Hương dương xỉ phương đông\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: EDP\r\n\r\nPhong Cách: Hấp dẫn, Mạnh mẽ, Sang trọng\r\n\r\nHương đầu: Hoa oải hương, Bạc hà\r\nHương giữa: Vanilla, Be'),
(40, 'Gift Set Burberry Her EDP', 'Rectangle 229-4.png', 20, 0, 4750000, 3400000, 'Gift Set Burberry Her EDP Gồm: Nước Hoa 100ml + Mini 7,5ml + Dưỡng Thể 75ml\r\n\r\nĐược ví như buổi tiệc dành riêng cho các quý cô, Burberry Her đã khẳng định vị trí của mình chỉ qua vỏn vẹn một cái nhìn,', 'Nhóm nước hoa: Hương hoa cỏ trái cây\r\n\r\nGiới tính: Nữ\r\n\r\nNồng độ: EDP\r\n\r\nĐộ lưu hương: Lâu – 7 giờ đến 12 giờ\r\n\r\nPhong Cách: Quyến Rũ, Tinh Tế, Ngọt Ngào.\r\n\r\nHương đầu: Dâu rừng, Dâu tây, Dâu tằm, Nho'),
(41, 'Xerjoff Alexandria II', 'un-2.png', 21, 0, 8500000, 5600000, 'Xerjoff Alexandria II – ĐỈNH CAO SANG TRỌNG & LÔI CUỐN CỦA NHÀ XERJOFF\r\nĐược ra mắt vào năm 2012, dành cho các tín đồ yêu chuộng sự sang trọng & lôi cuốn trong thế giới Nước Hoa đầy biến hóa hàng ngày. Người sáng tạo ra mùi hương này là Chris Maurice, đây được đánh giá là một trong những mùi hương hay nhất của nhà Xerjoff.\r\nXerjoff Alexandria II mở ra với một hương hoa ấm áp được hỗ trợ bởi vị ngọt của gia vị Táo, Quế và Tuyết Tùng, tất cả hòa quyện với nhau một cách dễ dàng. Có một mùi Gỗ thoảng qua những điều này trở nên rõ ràng hơn khi những Bông Hoa ở phần mở đầu dần khô đi. Khi phần mở đầu bắt đầu chuyển sang phần giữa, Oud và Hổ Phách bắt đầu trở nên nổi bật hơn, đồng thời những nốt hương Hoa nhạt dần về phía sau. Và khi các lớp hương chuyển sang giai đoạn khô dần, nó trở thành một mùi hương Gỗ cay ấm và Tonka ngọt ngào. Vị ngọt chỉ là một điểm nhấn để cân bằng mọi thứ mà không làm nó quá tải.\r\nXerjoff Alexandria II có hiệu suất vô cùng hoàn hảo, tuổi thọ của nó gần như không bao', 'Nhóm nước hoa: Hương Gỗ – Amber\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2012\r\n\r\nNồng độ: EDP\r\n\r\nPhong Cách: Sang Trọng, Ngọt Ngào, Lôi Cuốn\r\n\r\nHương Đầu: Gỗ Cẩm Lai, Hoa Oải Hương ( Lavender), Quế, Táo Xanh\r\n\r\nHương Giữa: Gỗ Tuyết Tùng, Hoa Hồng, Hoa Linh Lan'),
(42, 'Xerjoff Apollonia Parfum', 'un-1.png', 21, 0, 5950000, 5300000, 'Nếu ai đó hỏi tôi đâu là chai nước hoa đáng sở hữu nhất nhà XERJOFF thì không ngần ngại tôi sẽ trả lời luôn là Xerjoff Apollonia Parfum\r\n???????????????????????????? đã tạo ra ???????????????????????????????????? để kỷ niệm 50 năm thành lập mặt trăng lịch sử, đó là chuyến tàu vũ trụ Apollo 11 ngày 20 tháng 7 năm 1969. siêu phẩm Xerjoff Apollonia Parfum với bề mặt được cấu tạo phủ 2 lớp đan xen gồm : thuỷ tinh kèm các lớp tráng bạc đã được “ thai ngén “ mất tới 4 năm để lấy ý tưởng và phác hoạ để mọi người dễ mường tượng 1 “ con tàu “ mang theo niềm tự hào và hy vọng của nhân loại, bay qua hàng triệu các vì sao tinh tú trên dải ngân hà.\r\nề phần mùi hương Xerjoff Apollonia Parfum được tối giản bằng nguyên liệu white musk ( xạ hương trắng ) tạo cảm giác rất sạch sẽ + bồng bềnh tựa như bầu không khí trên mây. Tinh hoa này gợi lên sự quyến rũ và huyền bí của không gian vũ trụ sâu thẳm, của một bầu trời đêm được chiếu sáng bởi hàng vạn vì sao toả sáng trên bầu trời. Nếu bạn là người yêu thíc', 'Nhóm nước hoa: Hương Hoa Cỏ Phương Đông\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2019\r\n\r\nNồng độ: Parfum\r\n\r\nPhong Cách: Sang Trọng, Lôi Cuốn, Tinh tế\r\n\r\nHương Đầu: Hoa Trắng\r\n\r\nHương Giữa: Rễ Orris\r\n\r\nHương Cuối: Xạ Hương Trắng'),
(44, 'Hermes Un Jardin A Cythere', 'un4.png', 21, 0, 3300000, 2950000, 'Un Jardin à Cythère – Ký ức mùa hè Hy Lạp của Hermès, khơi gợi về hình ảnh những khu vườn hoang sơ trên hòn đảo Kythira. Nơi mặt trời mùa hè chiếu rọi quanh năm, nơi gió hát trong những bụi cỏ cao và cây cối, nơi thổi bừng lên khát vọng về hạnh phúc và tự do.\r\nMột khu vườn đáng kinh ngạc, không xanh tươi cũng không hoa lá, mà là vàng hoe của nắng. Christine Nagel đã tạo ra mùi hương này từ kỉ niệm sau chuyến du lịch tại Cythere, Hy Lạp. Một hương thơm của cam quýt, kết hợp của cỏ với gỗ ô liu và sự dịu dàng của quả hạt dẻ cười.\r\nHermes Un Jardin A Cythere đưa chúng ta đến khu vườn với những cây thân gỗ mọc trên những tán cỏ cao, lấp lánh giữa nắng hè vàng như mật. Mùi hương mang Notes chính là gỗ Oliu và hạt dẻ cười, mở đầu bằng Citrus, nhẹ nhàng, mềm mại. Mùi hương với mỗi con người là đều gắn liền với 1 ký ức. Hermes Un Jardin A Cythere là ký ức, hành trình thơm ngát của Christine Nagel về khu vườn ở vùng đất Hy Lạp.', 'Nhóm nước hoa: Hương gỗ thơm\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2023\r\n\r\nNồng độ: Eau de Parfum (EDP)\r\n\r\nPhong Cách: Tươi Mới, Sang Trọng, Tinh Tế.\r\n\r\nHương chính: Cam Quýt, Hạt dẻ cười, Hương lá xanh, Cây ôliu'),
(45, 'Matiere Premiere Santal Austral', 'un5.png', 21, 0, 6050000, 5450000, 'Nhóm nước hoa: Hương Gỗ Hổ Phách\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2019\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong Cách: Sang Trọng, Thu Hút, Nổi Bật\r\n\r\nHương đầu: Hoa Diên Vĩ\r\nHương giữa: Gỗ Đàn Hương\r\nHương cuối: Đậu Tonka, Benzion', 'Nhóm nước hoa: Hương Gỗ Hổ Phách\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2019\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong Cách: Sang Trọng, Thu Hút, Nổi Bật\r\n\r\nHương đầu: Hoa Diên Vĩ\r\nHương giữa: Gỗ Đàn Hương\r\nHương cuối: Đậu Tonka, Benzion'),
(46, 'Giorgio Armani Iris Celadon', 'un6.png', 21, 0, 5500000, 4800000, 'Hoa Diên vĩ – Iris được xem là biểu tượng của sức mạnh, sự cao quý, quyền uy, sự toàn bích, ánh sáng và cuộc sống. Vì vậy, hình ảnh cách điệu của loài hoa này xuất hiện ở khắp nơi từ trên áo choàng, mũ của nhà vua, các thành viên trong gia đình hoàng gia và cũng được thêu trên những lá cờ.\r\nTừ thế kỷ 13, Hoa Diên Vĩ chính thức trở thành biểu tượng hoàng gia của nước Pháp và được gọi với cái tên Fleur-de-lis\r\nGiorgio Armani Iris Celadon, ngụ ý nói về mùi hương dành cho hoàng gia danh giá, thiết kế thân chai mầu đen sức mạnh huyền bí và đầy quyền lực, với nắp đá xanh ngọc tinh tế dịu dàng và thanh cao. Với thiết kế đối lập giữ thân và nắp, Giorgio Armani Iris Celadon muốn thể hiện mùi hương mạnh mẽ vương giả nhưng không hề lạnh lùng không hề cứng nhắc, mà rất ”Tình” rất êm dịu.\r\nChắc chắn Armani Iris sẽ chinh phục mọi quý cô ngay từ lớp hương đầu tiên', 'Nhóm nước hoa: Hương hoa cỏ phương đông\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2017\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong Cách: Tinh Tế, Sang Trọng, Ấm Áp\r\n\r\nHương Đầu: Hoa Diên Vĩ, Thảo Quả, Cam Bergamot, Andehit\r\nHương Giữa: Hoa Diên Vĩ, Socola, Trà\r\nHương Cuối: Hoắc Hương, Xạ Hương, Hổ Phách'),
(47, 'Mancera Black to Black', 'un7.png', 21, 0, 3200000, 2550000, 'Mancera Black to Black là một trong những sản phẩm nước hoa đình đám của thương hiệu này. Hương khói sạch, Oud sáng là yếu tố chính của mùi hương này, cùng với những tầng hương của hoa hồng, hương gỗ và một chút ngọt ngào tinh tế.\r\nKhi xịt Mancera Black to Black lên da, hương khói Oud được tạo ra từ hỗn hợp gỗ Oud, đường nâu, và animal, mang đến một sự cay nồng, nồng nàn, đầy sức hút. Sự hòa quyện tinh tế của hoa hồng và hương gỗ thêm vào đó tạo ra một mùi hương cân bằng, không quá nồng gắt và đầy quyến rũ.\r\nCây hoắc hương và da thuộc là những tầng hương hoàn hảo cho phong cách này, tạo nên một sự pha trộn giữa mùi hương đất và mùi hương gỗ, đồng thời làm dịu và đánh thức những giác quan của người dùng.\r\nNếu bạn muốn tìm kiếm một mùi hương quyến rũ, đầy cá tính và cổ điển, Mancera Black to Black là lựa chọn hoàn hảo. Đây là một trong những sản phẩm nước hoa được đánh giá cao và nổi tiếng nhất của thương hiệu Mancera, đảm bảo sẽ khiến bạn đặc biệt hơn bất cứ ai trong phạm vi của nó.', 'Nhóm nước hoa: Hương Da Thuộc\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2015\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong Cách: Sang Trọng, Thu Hút, Lôi Cuốn\r\n\r\nHương Đầu: Cam Bergamot, Đinh Hương, Nghệ Tây.\r\nHương Giữa: Hoa hồng, Hoa Nhài, Hổ Phách, Lá Hoắc Hương\r\nHương Cuối: Xạ hương trắng, Da Thuộc, Gỗ Đàn Hương, Gỗ Trầm Hương.'),
(48, 'Xerjoff 1861 Zefiro', 'un11.png', 21, 0, 5400000, 5800000, 'Xerjoff 1861 Zefiro được ra mắt vào năm 2015. Người đứng sau loại nước hoa này là Mathieu Nardin. Zefiro được Xerjoff sáng tạo dựa trên cảm hứng từ thành Rome cổ kính, với những bức tường thành cổ kính trăm năm tuổi, với thuật giả kim lừng danh một thời.\r\nMùi hương Xerjoff 1861 Zefiro có phần mở đầu hoàn toàn tuyệt đẹp chiếm ưu thế bởi Nhựa Elemi, có đặc điểm mùi của gỗ thông cay tươi, mùi thơm của balsamic với một chút chanh, và nó gây nghiện, phaze ở giữa đẹp phức tạp hơn và được ủ tốt (mặc dù vẫn có chiếu và ngưỡng cửa nặng), vẫn được chi phối bởi quế nhưng cũng hiện diện rõ ràng bằng gỗ gụ quý. Sau đó, vị ngọt của quế dần dần thay thế bằng vị ngọt của mật ong và hổ phách, gỗ gụ trở nên nổi bật hơn, và sau đó tất cả lắng xuống để lại lớp hương cuối khói đầy gỗ.', 'Nhóm Hương: Amber Cpicy\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2015\r\n\r\nNồng độ: Eau De Parfum (EDP)\r\n\r\nPhong cách: Sang Trọng, Nổi Bất, Cá Tính\r\n\r\nHương đầu : Cam bergamot, Ngải cứu, Nhựa cây elemi\r\nHương giữa : Bạch đậu khấu, Quế, Hoa cẩm chướng, Hoa diên vĩ\r\nHương cuối : Mật ong, Trầm hương, Hương gỗ, Hổ phách'),
(49, 'Gucci Flora Gorgeous Gardenia Gift Set 3pcs', 'un10.png', 21, 0, 4690000, 3450000, 'Gucci Flora Gorgeous Gardenia kỉ niệm về mùa hoa năm ấy vẫn còn thoang thoảng đâu đây. Thứ hương sáng trong mở ra một khu vườn thơ mộng với sự tươi mát từ hoa lê và đường nâu ngọt ngào, dần dần Gucci Flora Gorgeous Gardenia trở nên hiền dịu, nhẹ nhàng và nữ tính một cách khó giải thích với hương Hoa dành dành trắng trong, mùi hương chu du qua từng cái chạm để biến những lời nói, ánh mắt và nụ cười của cô gái ấy trở thành những ký ức không thể nào quên .', 'Gift Set gồm:\r\n▪️Nước hoa 100ml\r\n▪Nước hoa mini 5ml\r\n▪️Nước hoa lăn 7.4ml\r\nGiới tính: Nữ\r\n\r\nNhóm Hương: Hương Hoa Cỏ Phương Đông\r\n\r\nNăm ra mắt: 2021\r\n\r\nNồng độ: Eau De Parfum (EDP)\r\n\r\nPhong cách: Ngọt Ngào, Gợi Cảm, Mãnh Liệt\r\n\r\nHương đầu: Hoa Lê\r\nHương giữa: Hoa Nhài, Cây Dành Dành;\r\nHương cuối: Đường Nâu, Hoắc Hương.'),
(50, 'Attar Collection Musk Kashmir', 'un9.png', 21, 0, 3950000, 2350000, ' Không phải trạng thái nồng nàn quyến rũ nghẹt thở nữa, xạ hương trong Attar Collection Musk Kashmir trong suốt và mềm mại, tạo hiệu ứng ngọt ngào da thịt vừa chủ động lại vừa ngây ngô. Gỗ và hoa kiều diễm, mộc mạc, nồng nàn vừa phải, quyến rũ đúng mực, mềm mại, tinh tế trong từng phút toả hương.\r\nAttar Collection Musk Kashmir dành cho bất kì ai muốn thể hiện đẳng cấp nhưng không phô trương, sang trọng mà không bóng bẩy. Note hương ít nhưng tạo hiệu ứng nhớ thương không ngờ, tạo trạng thái quyến rũ lý tưởng nhất mà ai cũng ước ao.\r\nAttar Collection Musk Kashmir – Mùi hương da thịt trần trụi\r\nXạ thuần khiết trong veo, Attar Collection Musk Kashmir khoác lên người dùng một “lớp da” khác, đẹp đẽ và quyến rũ. Tựa như một đám mây trắng sà lên vai bạn và bao bọc bạn trong một lớp xạ hương mềm mại ve vuốt, cảm giác mê đắm khó tả thành lời.', 'Nhóm nước hoa: Hương Hoa Cỏ – Gỗ – Xạ Hương\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2016\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong Cách: Sang Trọng, Thu Hút, Gợi Cảm\r\n\r\nHương Chính: Xạ Hương Trắng, Gỗ Đàn Hương, Phấn, Cây Dành Dành, Đinh Hương'),
(51, 'Mancera Roses and Chocolate', 'un8.png', 19, 0, 3800000, 2700000, 'ới lời giới thiệu rằng “mùi này có cách kết hợp rất cũ”, mình vẫn thật khó tưởng tượng được trải nghiệm thực sự là thế nào cho đến lúc được dùng tận tay ngửi tận mũi.\r\nSô cô la cứng và hoa hồng đồng loạt tỏa ra ngào ngạt. Điều rất lạ, không phải tốt cũng chả phải xấu mà chỉ đơn giản nó rất khác thường, là sô cô la lẫn hoa cứ lăn lộn qua lại đẩy nhau. Mỗi lần ngửi lại thấy một em khác. Sô cô la có độ ngọt nhưng khá cứng chứ không mềm nóng chảy như Chocolate Greedy Montale. Mạnh mẽ, rung động, không ngừng xoay chuyển.\r\nSự kết hợp này mang lại cảm giác hơi lộn xộn nhưng đồng thời cũng là 1 trải nghiệm thú vị và rất cá tính. Lúc đầu mình không thích nó, càng về sau thì lại càng thấy thú vị. Giống như khi yêu một cô gái đa dạng vậy, nàng có quá nhiều góc cạnh mà mỗi lần tiếp cận lại thấy nàng mới lạ và lại chìm vào tình yêu với nàng một lần nữa. Lưu ý là sô cô la có độ tỏa nhiều hơn mùi hoa. Sô cô la vẫn đắng nhưng mùi nước hoa gộp chung thì lại vẫn ngọt, vậy mới thật lạ lùng :))\r\nKhi hoa v', 'Nhóm nước hoa: Hương hoa cỏ – Trái cây – Thực phẩm\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2013\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong Cách: Sang Trọng, Thu Hút, Lôi Cuốn\r\n\r\nHương Đầu: Quả quýt hồng, Quả đào, Quả lý chua đen, Cam Bergamot\r\nHương giữa: Hoa hồng, Hoa tím, Sô cô la đen\r\nHương cuối: Xạ hương trắng, Hương Vani, Gỗ tuyết tùng'),
(52, 'Mancera The Aoud', 'un7.png', 21, 0, 3200000, 2500000, 'Mancera The Aoud là một hương thơm unisex tạo ra bởi Mancera với nước hoa Pierre Montale và phát hành trong năm 2011. Một hương thơm đặc biệt woodsy phương Đông với tính cách duyên dáng phong phú. Các ghi chú được tập hợp lại để tạo ra một ấm cay thơm rất sang trọng và thú vị được hưởng tất cả.\r\nHương trái cây của Cam quýt quyện vào mùi hương của Gỗ đó chính là Mancera The Aoud. Ngay nốt hương đầu âm ỉ trên làn da, bạn đã cảm giác như đang ngồi trong một phòng xông hơi thoáng đãng và tận hưởng phút giây thư giãn. Hương Cam và Chanh tươi mát quấn quýt với vị cay nhè nhẹ của tiêu và Trầm hương. Sự cộng hưởng này khiến bạn cảm nhận được sự dễ chịu.\r\nHương thơm dần chuyển sang mỏng manh và mềm mại hơn, Hoa hồng và Hoa nhài dường như đã nắm rõ sở thích của làn da, nên thực hiện những cái chạm thật khẽ, đủ tinh tế để cảm xúc được mơn trớn. Đến tầng hương cuối, Mancera The Aoud chỉ còn tập trung thể hiện sự ấm áp và nồng nàn với hương thơm đặc trưng của những loại Gỗ (gỗ guaiac, tuyết tùng, g', 'Nhóm nước hoa: Amber Wood\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2011\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong Cách: Sang Trọng, Thu Hút, Cá Tính\r\n\r\nHương đầu: Đinh hương, Quế, Tiêu, Cam bergamot\r\nHương giữa: Nhị hoa nghệ tây, Hoa phong lữ, Hoa hồng\r\nHương cuối: Gỗ trầm hương, Gỗ đàn hương, Gỗ tuyết tùng, Da thuộc, xạ hương trắng'),
(53, 'Xerjoff 1861 Decas', 'un-1.png', 21, 0, 5800000, 5400000, 'Xerjoff 1861 Decas là chai nước hoa kỉ niệm 10 năm sự ra đời và phát triển đầy huy hoàng của bộ sưu tập 1861, với phong cách nhuốm màu nghi lễ, mô phỏng không khí trang nghiêm vương giả của hoàng gia nước Ý.\r\nXerjoff đã chọn thuật ngữ Latinh “Decas”, có nghĩa là thứ mười và cũng là thập kỷ, làm tiêu đề ngắn gọn cho tác phẩm XJ 1861 mới nhất của ông. Decas có tính biểu tượng cực cao với thiết kế chai cực tinh xảo được tô điểm bằng màu sắc của quốc kỳ Ý. Như trong tất cả các sáng tạo thơm của Xerjoff, Decas được sản xuất độc quyền từ những nguyên liệu thô chất lượng cao, được lựa chọn cẩn thận.', 'Nhóm nước hoa: Hương Amber Floral\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2021\r\n\r\nNồng độ: Eau De Parfum (EDP)\r\n\r\nPhong Cách: Sang Trọng, Lôi Cuốn, Hấp Dẫn\r\n\r\nHương đầu: Quả cam, Quả quýt, Thuốc lá, Hoa huệ.\r\nHương giữa: Cây diên vỹ, Benzoin,.\r\nHương cuối: Nhựa cây, Vanilla, Xạ hương.'),
(54, 'Maison Margiela Replica On A Date', 'un-3.png', 21, 0, 3900000, 3200000, 'Maison Margiela Replica On A Date với mùi hương gây nghiện của những trái nho chín mọng dưới ánh nắng ấm áp, và nét tinh tế nhưng quyết đoán của hoa hồng dại. Loại nước hoa này đánh thức các giác quan với những kỷ niệm hẹn hò và yêu đương độc đáo và sâu sắc.\r\nNhững nốt hương của cam Bergamot và hoa hồng truyền tải tất cả sự phấn khích của một buổi hẹn hò hoàn hảo. Một loại rượu Blackcurrant có kết cấu, ngọt ngào và hấp dẫn kết hợp với Hoắc hương gợi cảm và thân gỗ đưa chúng ta đến những vườn nho của Provence, đắm chìm trong ánh sáng vàng của hoàng hôn.', 'Nhóm nước hoa: Hương Hoa Cỏ – Trái Cây\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2022\r\n\r\nNồng độ: EDT\r\n\r\nPhong Cách: Sang Trọng, Lôi Cuốn, Hấp Dẫn\r\n\r\nHương đầu: Quả lý chua đen, Ớt hồng, Cam bergamot\r\nHương giữa: Hoa Hồng, Hoa Phong Lữ, Lá Davana\r\nHương cuối: Cỏ hương bài, Rêu sồi, Xạ hương, Hoắc hương'),
(56, 'Versace Dylan Blue Pour Femme Gift Set', 'Rectangle 229noibat.png', 24, 0, 3600000, 2900000, '– Túi Versace Shoulder Bag\r\n– Nước hoa Versace Dylan Blue EDP 100ml.\r\n– Nước hoa mini Versace Dylan Blue EDP 5ml.\r\n– Dưỡng thể nước hoa Versace Body Lotion 100ml.\r\n– Sữa tắm nước hoa Versace Shower Gel 100ml.\r\nCá tính & Quyến rũ – Versace Dylan Blue Pour Femme là chai nước hoa được ưa chuộng nhất của chị em, độc đáo trong thiết kế và mùi hương táo bạo. Donatella Versace đã miêu tả về cô nàng này rằng ” Dylan Blue Pour Femme là sự tôn vinh của tôi đối với nữ giới, vì vậy chúng tôi đã tạo ra một mùi hương mạnh mẽ, gợi cảm và rất tinh tế cho những người phụ nữ, để họ có thể khám phá được sức mạnh của chính mình”.\r\n\r\nMở đầu bằng hương thơm của Trái lý chua đen cùng Táo xanh Granny Smith, Versace Pour Femme Dylan Blue mang tới sự tươi mới, thanh lịch, một sự dễ chịu đến tuyệt tời dành cho mọi thời gian và không gian. Bạn có thể mang cô nàng này đi khắp mọi nơi, từ công sở cho tới những bữa tiệc, bởi sự dịu dàng và cuốn hút là điều Versace Pour Femme Dylan Blue đã làm rất tốt.\r\n\r\n Tiếp đó Ve', 'Bộ sản phẩm Versace bao gồm:\r\n\r\n– Túi Versace Shoulder Bag\r\n– Nước hoa Versace Dylan Blue EDP 100ml.\r\n– Nước hoa mini Versace Dylan Blue EDP 5ml.\r\n– Dưỡng thể nước hoa Versace Body Lotion 100ml.\r\n– Sữa tắm nước hoa Versace Shower Gel 100ml.\r\n\r\nGiới tính : Nữ\r\n\r\nNồng độ : Eau de parfum\r\n\r\nNhóm hương : Hương Hoa cỏ Trái cây – Floral Fruity\r\n\r\nPhong cách : Quyến rũ, tự tin, cuốn hút\r\n\r\nHương đầu: Quả lý chua đua, Quả táo xanh, Cỏ ba lá, Hoa lưu ly, Rau tía tô\r\n\r\nHương giữa: Hoa tầm xuân, Hương hoa hồng, Hương hoa nhài, Quả đào, Hương Petalia\r\n\r\nHương cuối: Hương bồ đề, Hương gỗ trắng, Xạ hương, Hoắc hương'),
(57, 'Lacoste Eau de Lacoste L.12.12 Blanc Pure Gift Set', 'Rectangle 229noibat-1.png', 24, 0, 2750000, 2450000, 'Nhóm nước hoa: Hương gỗ thơm\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2014\r\n\r\nNồng độ: Eau De Toilette (EDT)\r\n\r\nPhong Cách: Năng Động, Trẻ Trung, Tươi Mát.\r\n\r\nHương Đầu: Quả bưởi, Cây hương thảo, Bạch đậu khấu, Gỗ tuyết tùng\r\n\r\nHương giữa: Hoa ngọc lan tây, Hoa huệ trắng\r\n\r\nHương cuối: Gỗ tuyết tùng Virginia 2, Da thuộc, Da lộn, Cỏ hương bài', 'Lacoste Eau de Lacoste L.12.12 Blanc Pure mở ra với các hương của bưởi chùm, một ít hương thảo và bạch đậu khấu. Lớp hương giữa thấm đẵm các hương hoa cỏ của hoa huệ Mexico, hoàng lan và phảng phất một mùi giống với trầm hương. Lá cây tuyết tùng củng cố sự nam tính có trong nước hoa và lớp hương cuối tỏa ra một làn hương của da lộn, da thuộc và gỗ tuyết tùng. Tất cả đều được nâng đỡ bởi hoắc hương, một hương thơm rất tươi và sạch.'),
(58, 'Trussardi Donna Pink Marina', 'Rectangle 229noibat-3.png', 24, 0, 2610000, 1850000, 'Đôi khi, cứ thèm lắm cái hơi mằn mặn của biển, cái ngòn ngọt mọng nước của trái cây, lâu lâu lại “bắt quả tang” được chút hương hoa cùng gỗ tới nịnh mũi người ta, Trussardi Donna Pink Marina đem lại sự nhẹ nhõm, bình an, cái cảm giác không thể tìm thấy được ở thành phố xô bồ.\r\nTrussardi Donna Pink Marina Với chủ đạo là nhóm hương Cam chanh, từng đợt sảng khoái, tươi mát cứ ập đến rồi thấm đẫm trên làn da, như tiếp thêm nguồn năng lượng vào những ngày mệt mỏi, thiếu sức sống. Bên bờ cát, dưới làn gió nhẹ được ươm vào chút hương Hoa cùng Muối biển, tận hưởng một ly kem Sorbet, cảm nhận sự tươi mới của trái cây và cái mát lạnh từ kem cứ từ từ lan dần ra khắp cơ thể.', 'Nhóm nước hoa: Hương hoa cỏ phương đông\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2020\r\n\r\nNồng độ: EDT\r\n\r\nPhong Cách: Ngọt Ngào, Lôi Cuốn, Đáng Yêu\r\n\r\nHương đầu: Sorbet, Dưa lưới, Chanh vàng, Bưởi hồng\r\nHương giữa: Hoa Neroli, Lily Cát, Muối biển\r\nHương cuối: Gỗ tuyết tùng, Hoắc hương, Gỗ đàn hương'),
(59, 'Gift Set Burberry Her EDP', 'Rectangle 229noibat-4.png', 24, 0, 4750000, 3400000, 'Burberry Her EDP khoác lên mình mùi hương thanh ngọt từ các loại Dâu rừng, Dâu tây, Nho đen và Cherry. Ngọt ngào nhưng không hề nhàm chán cùng hương thơm tươi mát được hòa quyện khéo léo với Chanh vàng và Cam ngọt.\r\n\r\n“Bữa tiệc của các quý cô” không thể trọn vẹn nếu thiếu đi những tầng hương nhen nhúm, chờ lúc được nở rộ, nhẹ nhàng đi vào lòng người từ Hoa nhài và đồng thảo. Và cuối cùng, ẩn dưới lớp áo tinh nghịch, năng nổ thường ngày là nét e ấp, ấm áp phần nào được thể hiện qua Hổ phách và Gỗ sồi.', 'Gift Set Burberry Her EDP Gồm: Nước Hoa 100ml + Mini 7,5ml + Dưỡng Thể 75ml\r\n\r\nNhóm nước hoa: Hương hoa cỏ trái cây\r\n\r\nGiới tính: Nữ\r\n\r\nNồng độ: EDP\r\n\r\nĐộ lưu hương: Lâu – 7 giờ đến 12 giờ\r\n\r\nPhong Cách: Quyến Rũ, Tinh Tế, Ngọt Ngào.\r\n\r\nHương đầu: Dâu rừng, Dâu tây, Dâu tằm, Nho đen, Cherry, Chanh vàng và Cam ngọt\r\nHương giữa: Hoa đồng thảo, Hoa nhài\r\nHương cuối: Hổ phách, Gỗ sồi, Xạ hương, Hoắc hương, Gỗ Cashmeran'),
(60, 'Giorgio Armani Prive Thé Yulong', 'Rectangle 229noibat-6.png', 24, 0, 5600000, 4300000, 'Giorgio Armani Prive Thé Yulong là sự cân bằng hoàn hảo giữa sự tươi mát của trà xanh và cam quýt với vị đậm đà của trà đen và hương gỗ hun khói, được biết đến với những cây trà mọc ở độ cao và cảnh quan tuyệt vời của nó, vùng Vân Nam là nơi có một trong những loại trà đen đẹp nhất', 'Giới tính: Unisex\r\n\r\nNăm ra mắt: 2020\r\n\r\nNồng độ: Eau De Toilette\r\n\r\nPhong cách: Tinh Tế, Tươi Mới, Nhẹ Nhàng\r\n\r\nHương đầu : Quả cam Mandarin, Bạch đậu khấu và Hoa đậu biếc\r\nHương giữa : Trà xanh, Trà đen, Hoa nhài và Hoa cam\r\nHương cuối : Cỏ Vetiver, Ambrette (Xạ hương) và hoa diên vĩ.'),
(62, 'Burberry Brit For Him', 'Rectangle 229noibat-11.png', 24, 0, 2580000, 2100000, 'Burberry Brit For Him mở đầu tươi mát của hỗn hợp cam chanh( gồm quýt, cam bergamot), hương gừng nồng nàn và bạch đậu khấu dần chuyển sang một vẻ đẹp nam tính đầy mãnh liệt với gỗ tuyết tùng và đậu khấu, điểm xuyết thêm một ít tinh tế của hoa hồng dại. Lớp hương cuối trở nên gợi cảm và quyến rũ nhờ vào những hương gỗ ấm nóng, hổ phách xám, đậu tonka và hoắc hương. Loại nước hoa gỗ – phương đông này là sự pha trộn tuyệt vời của những trái quýt xanh mọng nước hay các lát cắt từ gừng tươi, phảng phất thêm một chút hoa hồng dại và gỗ tuyết tùng. Mùi hương vừa dễ chịu, nhẹ nhàng nhưng vẫn không kém phần Nam Tính, Tinh Tế và Cuốn Hút.', 'Nhãn hiệu: Burberry\r\nGiới tính: Nam\r\nNồng độ: Eau de Toilette\r\nNăm ra mắt: 2004\r\nNhóm hương: Hương Phương Đông – Oriental\r\nPhong cách: Nam Tính, Tinh Tế, Cuốn Hút\r\nHương đầu: Quýt, Gừng, Cam bergamot, Bạch đậu khấu\r\nHương giữa: Hạt nhục đậu khấu, Tuyết tùng, Hoa hồng dại, Hương cay\r\nHương cuối: Đậu tonka, Hoắc hương, Gỗ phương đông, Tuyết tùng, Xạ hương'),
(63, 'Dsquared2 Wood Red Pour Femme', 'Rectangle 229noibat-10.png', 24, 0, 2250000, 1800000, 'Táo bạo và quyến rũ là 2 tính từ tạo nên cá tính riêng của một người phụ nữ lãng mạn. Khởi đầu đầy ẩn ý, khi tiêu hồng “đánh” thẳng vào trọng tâm “con mồi” cũng là lúc Mạn Việt Quất lại tỏa ra thứ hương thơm ngọt ngào như một loại “lưới tình” đầy ma mị.\r\n\r\nSự tinh tế lại bộc rõ ràng khi tâm hồn sắc sảo lại được chưng cất hoàn hảo cùng những sắc thái nữ tính, nhẹ nhàng của Hoa hồng, rồi lắng xuống trong phút chốc tạo nên một hỗn hợp “độc dược” lôi cuốn gồm Vải và Chi Mộc Lan\r\n\r\nCuối cùng, trên làn da mềm mỏng ấy là sự ấm áp, là những ý niệm về một tình yêu đầy khát vọng. Sự ấm áp của amberwood hòa quyện cùng gỗ tuyết tùng đã rung động những trái tim bồi hồi, là sự vỡ òa của xạ hương cùng những ân ái sâu lắng, miên man.', 'Nhóm nước hoa: Hương Hoa Cỏ Trái Cây\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2019\r\n\r\nĐộ lưu hương: Khá lâu – 3 giờ đến 6 giờ\r\n\r\nĐộ toả hương: Xa – trong vòng 6 feet\r\n\r\nPhong Cách: Sang Trọng, Quyến Rũ, Gợi Cảm\r\n\r\nHương đầu: Tiêu Hồng và Mạn việt quât.\r\n\r\nHương giữa: Hoa hồng, Vải và Chi Mộc Lan\r\n\r\nHương cuối:  Amberwood, Gỗ tuyết tùng và Xạ hương'),
(64, 'Son Tom Ford 16 Scarlet Rouge Scented Limited Màu Đỏ Thuần', 'Rectangle 229noibat-5.png', 22, 0, 1780000, 1390000, 'Nhãn hiệu: Tom Ford\r\n\r\nPhân Loại: Son Lì\r\n\r\nMầu Sắc: Đỏ Thuần\r\n\r\nKhả năng bám mầu: 5 – 6h đồng hồ\r\n\r\nTrọng Lượng: 3.5gSon Tom Ford 16 Scarlet Rouge Scented Limited màu đỏ thuần có màu đỏ hơi trầm một chút cổ điển đánh trực tiếp lên môi, chỉ với một đường cơ bản màu của son lên đã rất sáng và chuẩn. Đợi một vài phút, cho màu tự nhiên và xinh xắn lắm các Nàng nhé.\r\nChất son mềm mượt, đầy đặn, không khô môi, lên màu siêu chuẩn đây cũng là đặc điểm khác biệt của cây son lì Tom Ford so với các dòng son hiện nay.', 'Nhãn hiệu: Gucci\r\n\r\nXuất xứ : Ý\r\n\r\nPhân Loại: Son Lì\r\n\r\nMầu Sắc: Đỏ\r\n\r\nKhả năng bám mầu: 5 – 6h đồng hồ\r\n\r\nTrọng Lượng: 3.5g'),
(65, 'Son Tom Ford Màu 06 Flame Grande', 'Rectangle 229son.png', 22, 0, 1400000, 1400000, 'Nếu đã là tín đồ của son môi thì không thể bỏ qua son của Tom Ford. Khi dùng cũng đều thấy rằng đẳng cấp, chất son hơn hẳn các dòng son khác.\r\n\r\n– Son Tom Ford Cũng được các chuyên gia Make up hàng đầu đánh giá cao về chất lượng son khi đánh.\r\n\r\n– Chất son mềm mượt, đầy đặn, không khô môi, lên màu siêu chuẩn đây cũng là đặc điểm khác biệt của Tom Ford so với các dòng son hiện nay.', 'Khối Lượng: 3g\r\n\r\nXuất Xứ: Bỉ'),
(68, 'Son Gucci Mầu 208 They Met in Argentina Matte Hồng Đất Kiêu Sa', 'Rectangle 229son-1.png', 22, 0, 1100000, 1100000, 'Son Lì Gucci 208 They Met in Argentina màu cam đất là một màu son mới của hãng Gucci, với màu cam đất chuẩn tông mang đến cho các cô nàng một vẻ ngoài rạng rỡ, trẻ trung và năng động. Son Gucci 208 màu cam đất chính hoàn hảo phù hợp với xu hướng trang điểm tự nhiên hiện nay. Bạn sẽ trở nên cuốn hút và nổi bật hơn với màu son tươi mới này.\r\nMột trong những thỏi son hot dòng Gucci Rouge à Lèvres Matte Lipstick chính là Son Gucci 208. Màu son cam đất nhìn rất thơ, chuẩn trong mơ của triệu triệu cô nàng chính là đây. Son lên môi sành điệu cực kỳ, tô điểm diện mạo cho phái đẹp bừng sáng lộng lẫy.', 'Nhãn hiệu: Gucci\r\n\r\nXuất xứ : Ý\r\n\r\nPhân Loại: Son Lì\r\n\r\nMầu Sắc: Cam Đất\r\n\r\nKhả năng bám mầu: 5 – 6h đồng hồ\r\n\r\nTrọng Lượng: 3.5g'),
(69, 'Son Gucci Màu 25 Goldie Red Matte Đỏ Cổ Điển Hot Nhất', 'Rectangle 229son-7.png', 22, 0, 1100000, 1100000, '2020 tiếp tục là dấu mốc quan trọng của Gucci khi trở lại đường đua son môi một cách đầy “ngoạn mục” với 58 sắc son lộng lẫy, đẹp đẽ ngạo kiều. Đúng chuẩn son vỏ vàng hàng hiệu, là một “bữa tiệc” sắc màu, BST Gucci Rouge à Lèvres chia ra làm hai kết cấu Satin Lipstick và Matte Lipstick. Những gì hoàn hảo, tinh túy và đẳng cấp nhất đến từ thương hiệu làm đẹp “cổ thụ” Gucci đều hội tụ cả trong Son Gucci 25. Nữ hoàng đỏ cổ điển trong bộ sưu tập, Gucci 25 Goldie Red với mê lực khó cưỡng, đảm bảo cô nàng nào cũng muốn chinh phục.', 'Nhãn hiệu: Gucci\r\n\r\nXuất xứ : Ý\r\n\r\nPhân Loại: Son Lì\r\n\r\nMầu Sắc: Đỏ\r\n\r\nKhả năng bám mầu: 5 – 6h đồng hồ\r\n\r\nTrọng Lượng: 3.5g'),
(70, 'Ralph Lauren Ralph’S Club Gift Set', 'set1.png', 26, 0, 3650000, 3200000, 'Gift set bao gồm 3 chai nước hoa: 100ml + 30ml + mini 7ml\r\nNhắc đến nước hoa nam, người ta thường nghĩ ngay đến mùi hương ấm áp, nồng nàn từ xạ hương hay hổ phách. Tuy nhiên, vẫn có những chai nước hoa nhẹ nhàng, tươi mới nhưng không làm mất đi sự nam tính, thanh lịch, mạnh mẽ của người đàn ông.', 'Gift set bao gồm 3 chai nước hoa: 100ml + 30ml + mini 7ml\r\n\r\nNhóm nước hoa: Hương gỗ cay nồng\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2021\r\n\r\nNồng độ: EDP\r\n\r\nPhong Cách: Cuốn Hút, Mạnh Mẽ, Sang Trọng\r\n\r\nHương đầu: Oải hương, Xô thơm\r\nHương giữa: Tuyết tùng\r\nHương cuối: Cỏ hương bài'),
(71, 'Versace Dylan Blue Pour Femme Gift Set', 'set2.png', 26, 0, 3600000, 2900000, 'Cá tính & Quyến rũ – Versace Dylan Blue Pour Femme là chai nước hoa được ưa chuộng nhất của chị em, độc đáo trong thiết kế và mùi hương táo bạo. Donatella Versace đã miêu tả về cô nàng này rằng ” Dylan Blue Pour Femme là sự tôn vinh của tôi đối với nữ giới, vì vậy chúng tôi đã tạo ra một mùi hương mạnh mẽ, gợi cảm và rất tinh tế cho những người phụ nữ, để họ có thể khám phá được sức mạnh của chính mình”.\r\n\r\nMở đầu bằng hương thơm của Trái lý chua đen cùng Táo xanh Granny Smith, Versace Pour Femme Dylan Blue mang tới sự tươi mới, thanh lịch, một sự dễ chịu đến tuyệt tời dành cho mọi thời gian và không gian. Bạn có thể mang cô nàng này đi khắp mọi nơi, từ công sở cho tới những bữa tiệc, bởi sự dịu dàng và cuốn hút là điều Versace Pour Femme Dylan Blue đã làm rất tốt.\r\n\r\n Tiếp đó Versace Dylan Blue Pour Femme trở lên gợi cảm hơn với sự kết hợp giữa nụ Tầm xuân, hoa Petalia cùng Trái đào, sự thanh tao và khơi gợi những điều mềm mại trong tâm hồn của những người phụ nữ truyền thống. Nhưng k', 'Bộ sản phẩm Versace bao gồm:\r\n\r\n– Túi Versace Shoulder Bag\r\n– Nước hoa Versace Dylan Blue EDP 100ml.\r\n– Nước hoa mini Versace Dylan Blue EDP 5ml.\r\n– Dưỡng thể nước hoa Versace Body Lotion 100ml.\r\n– Sữa tắm nước hoa Versace Shower Gel 100ml.\r\n\r\nGiới tính : Nữ\r\n\r\nNồng độ : Eau de parfum\r\n\r\nNhóm hương : Hương Hoa cỏ Trái cây – Floral Fruity\r\n\r\nPhong cách : Quyến rũ, tự tin, cuốn hút\r\n\r\nHương đầu: Quả lý chua đua, Quả táo xanh, Cỏ ba lá, Hoa lưu ly, Rau tía tô\r\n\r\nHương giữa: Hoa tầm xuân, Hương hoa hồng, Hương hoa nhài, Quả đào, Hương Petalia\r\n\r\nHương cuối: Hương bồ đề, Hương gỗ trắng, Xạ hương, Hoắc hương'),
(72, 'Gift Set Jean Paul Gaultier Scandal 3pcs', 'set3.png', 26, 0, 3800000, 3250000, 'Cám dỗ là có thật, và Scandal cũng có thật, chỉ là vì bạn chưa thử một lần Scandal lên da của mình mà thôi. Đã có quá nhiều sự ngạc nhiên và bất ngờ về Top note của cô nàng này ngay cú xịt đầu tiên, và những sự ngạc nhiên đó chỉ là có thể gói gọn bằng vài từ ngữ bột phát về mặt cảm xúc như “thơm quá vậy” hay chỉ 1 từ “Dâm”. Bạn đừng cười và cũng đừng cho rằng những lời nói trên là phóng đại, bởi nếu tiếp xúc với Scandal lần đầu, một số quan điểm cá nhân của bạn về việc “mình không thích nước hoa có mùi hương ngọt” sẽ có sự thay đổi đáng kể đó nhé. Scandal ngọt thực sự, bởi Mid note là mật ong, và Base note là sáp mật ong, chừng đó thôi đủ khiến bạn cảm thấy hơi ngọt phủ kín lên mùi hương này rồi. Nhưng hãng Jean Paul Gautier không cho phép cái “Ngọt” đó xảy ra một cách đơn giản như vậy đâu, Cam đỏ và Hoắc hương được kết hợp một cách tinh vi cùng lớp kem đầy hấp dẫn của Caramel, nhóm hương này vô tình đưa đối phương vào một khu vườn ngọt ngào, mê đắm, nhưng không hề hay biết đó là một m', 'Nhãn hiệu: Jean Paul Gaultier\r\n\r\nGiới tính : Nữ\r\n\r\nXuất xứ : Pháp\r\n\r\nNồng độ : Eau de parfum\r\n\r\nPhát hành : 2017\r\n\r\nNhà pha chế : Jean Paul Gaultier\r\n\r\nNhóm hương : Hương Hoa cỏ Síp – Chypre Floral\r\n\r\nPhong cách : Hiện đại, mạnh mẽ, thanh lịch\r\n\r\nHương đầu: Cam đỏ, Hoa nhài tây\r\n\r\nHương giữa: Hương mật ong\r\n\r\nHương cuối: Cây hoắc hương'),
(73, 'Gucci Flora Gorgeous Gardenia Gift Set 3pcs', 'set4.png', 26, 0, 4690000, 3450000, 'Sản phẩm dưỡng thể hương nước hoa Gucci Flora Gorgeous Gardenia giúp các nàng có được làn da mịn màng tươi tắn với sự pha trộn các thành phần nuôi dưỡng da chuyên sâu. Gucci Flora Gorgeous Gardenia Perfumed Body Lotion sẽ mang đến cho làn da cảm giác mềm mại, mịn màng và dưỡng ẩm tuyệt vời. Dưỡng thể Gucci Flora Gorgeous Gardenia chắc chắn sẽ khiến bạn hài lòng và thích thú.Ngoài ra, kết hợp dưỡng thể và nước hoa cùng dòng còn mang đến hương thơm hoàn hảo và thời gian lưu hương được kéo dài hơn cho bạn.', 'Nước hoa 100ml\r\n▪Nước hoa mini 5ml\r\n▪️Nước hoa lăn 7.4ml\r\nGiới tính: Nữ\r\n\r\nNhóm Hương: Hương Hoa Cỏ Phương Đông\r\n\r\nNăm ra mắt: 2021\r\n\r\nNồng độ: Eau De Parfum (EDP)\r\n\r\nPhong cách: Ngọt Ngào, Gợi Cảm, Mãnh Liệt\r\n\r\nHương đầu: Hoa Lê\r\nHương giữa: Hoa Nhài, Cây Dành Dành;\r\nHương cuối: Đường Nâu, Hoắc Hương.'),
(74, 'Gucci Bloom EDP Gift Set 3pcs', 'set5.png', 26, 0, 4500000, 3800000, 'Yêu ngay từ cái nhìn đầu tiên – Gucci Bloom EDP mộc mạc và trần trụi, tựa như một cơn gió mát mùa xuân ngập tràn sức sống khiến cho bất kì ai khi vô tình lướt qua sẽ cảm thấy thổn thức đến nao lòng. Giống một bông hoa nhỏ bé đang từ từ nở rộ giữa khu vườn tràn ngập hương hoa nhài và hoa huệ trắng vào buổi sớm, Gucci Bloom EDP toả hương thơm nức lòng người, kiều diễm và tràn đầy sức sống. Ấy thế, đâu đó len lỏi trong từng tầng hương vẫn là chút vị trà tươi nhẹ thư thái làm cho Gucci Bloom càng trở lên thu hút với mọi người.', 'Nhóm nước hoa: Hương hoa cỏ\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2017\r\n\r\nNồng độ: EDP\r\n\r\nNhà pha chế: Alberto Morillas\r\n\r\nPhong Cách: Quyến Rũ, Sang Trọng, Quý Phái\r\n\r\nNốt hương đầu : Lá cây\r\nNốt hương giữa : Chi ngân, Hoa Nhài, Hoa Huệ\r\nNốt hương cuối : Gỗ đàn hương, Vani'),
(75, 'Hermes Un Jardin Sur Le Nil Gift Set', 'set6.png', 26, 0, 3550000, 3000000, 'Hermes Un Jardin Sur Le Nil lừng danh, một trong những cái tên thường được nhắc đến đầu tiên mỗi khi nói tới nước hoa mùa hè.\r\nThật là thiếu sót lớn nếu bạn là người chơi nước hoa mà chưa từng một lần được đắm chìm trong mùi hương của sen, của xoài, của không khí bên bờ sông NIL huyền thoại – cái hợp hương vừa thư giãn yên bình, lại vừa bảng lảng khó quên mà chai nước hoa này mang lại cho bạn.', 'Hermes Un Jardin Sur Le Nil Gift Set Gồm: 100ml + Mini 15ml + Sữa Tắm 40ml + Túi Vải Hermes.\r\n\r\nNhóm nước hoa: Hương hoa cỏ trái cây\r\n\r\nGiới tính: Unisex\r\n\r\nNăm ra mắt: 2005\r\n\r\nNồng độ: Eau de Toilette (EDT)\r\n\r\nPhong Cách: Thanh Lịch, Tinh Tế, Tươi Mới\r\n\r\nHương đầu: Quả bưởi, Xoài xanh, Cà chua, Cà rốt.\r\nHương giữa: Hoa sen, Cỏ hương bồ, Quả cam, Hoa lục bình, Hoa mẫu đơn.\r\nHương cuối: Xạ hương, Diên vĩ, Nhang, Nhựa Labdanum, Quế.'),
(76, 'Lacoste Eau de Lacoste L.12.12 Blanc Pure Gift Set', 'set7.png', 26, 0, 2750000, 2450000, 'Lacoste Eau de Lacoste L.12.12 Blanc Pure mở ra với các hương của bưởi chùm, một ít hương thảo và bạch đậu khấu. Lớp hương giữa thấm đẵm các hương hoa cỏ của hoa huệ Mexico, hoàng lan và phảng phất một mùi giống với trầm hương. Lá cây tuyết tùng củng cố sự nam tính có trong nước hoa và lớp hương cuối tỏa ra một làn hương của da lộn, da thuộc và gỗ tuyết tùng. Tất cả đều được nâng đỡ bởi hoắc hương, một hương thơm rất tươi và sạch.\r\nLacoste Eau de Lacoste L.12.12 Blanc Pure luôn là chai ăn khách nhất của Lacoste đến thời điểm hiện tại. Một trong những lựa chọn hàng đầu khi bạn không biết dùng loại nước hoa nào. Lacoste được lòng các anh vì mùi hương nam tính và cực kỳ dễ dùng đi làm, đi chơi hay chơi thể thao đều rất OK.', 'Nhóm nước hoa: Hương gỗ thơm\r\n\r\nGiới tính: Nam\r\n\r\nNăm ra mắt: 2014\r\n\r\nNồng độ: Eau De Toilette (EDT)\r\n\r\nPhong Cách: Năng Động, Trẻ Trung, Tươi Mát.\r\n\r\nHương Đầu: Quả bưởi, Cây hương thảo, Bạch đậu khấu, Gỗ tuyết tùng\r\n\r\nHương giữa: Hoa ngọc lan tây, Hoa huệ trắng\r\n\r\nHương cuối: Gỗ tuyết tùng Virginia 2, Da thuộc, Da lộn, Cỏ hương bài'),
(77, 'Maison Francis Kurkdjian Fragrance Wardrobe 8x11ml For Her', 'set8.png', 26, 0, 6200000, 5200000, 'Set Nước Hoa Maison Francis Kurkdjian Fragrance Wardrobe 8x11ml For Her là tập hợp những cái tên được yêu thích nhất của MFK, đặc biệt set sở hữu mùi hương nồng độ cao nhất của nước hoa huyền thoại nhất của hãng là 540 Extrait De Parfum. Set cũng tập hợp một loạt các mùi được yêu thích nhất của MFK, tính ra giá sau sale chỉ còn chưa đến 700 cho một lọ Travel spray 11ml chính hãng, rất lợi và rẻ nữa.', 'Oud Satin Mood Eau De Parfum\r\n540 Eau De Parfum\r\n540 Extrait De Parfum\r\nAqua Universalis Cologne Forte\r\nAqua Celestia Cologne Forte\r\nAqua vitae Cologne Forte\r\nAmyris Femme\r\nGentle Fluidity Gold'),
(78, 'Set Kilian Discovery', 'set9.png', 26, 0, 5800000, 5300000, 'ước hoa Kilian Good Girl Gone Bad 7.5ml\r\nĐúng như tên gọi, Kilian Good Girl Gone Bad làm cho người khác phải xuyến xao khi bắt gặp lần đầu tiên. Khoảnh khắc mùi hương lan tỏa cho ta thấy một cô gái xinh xắn mang vẻ đẹp thuần khiết nhưng càng đi sâu thì cô gái đó càng thể hiện sự nổi loạn bên trong.\r\n\r\nLớp hương của Kilian Good Girl Gone Bad mở đầu bằng sự kết hợp mùi thoang thoảng kiêu sa của những nốt hương hoa nhài cùng hương vị nồng nàn của hoa hồng tháng năm, hoa mộc tê bổ sung và làm tôn lên nét ngây thơ trong mùi hương. Hương vị thơ dại của hoa thủy tiên kết hợp với hoa huệ trắng làm sắc mùi chủ đạo trong hương thơm của nước hoa. Về sau cô gái ngây thơ ấy bộc lộ sự nổi loạn nhưng lại vô cùng gợi cảm với mùi hương của gỗ tuyết tùng cùng hương hổ phách huyền ảo.', 'Giới tính: Unisex\r\n\r\nNăm ra mắt: 2022\r\n\r\nNồng độ: EDP\r\n\r\nNhà pha chế: Calice Becker\r\n\r\nPhong cách: Sang Trọng , Trầm ấm , Thu hút\r\n\r\nHương chính\r\n\r\nGood girl gone bad: Orange Blossom, Osmanthus, Tuberose\r\n\r\nBlack Phantom: Rum, Cà phê, Cyanide\r\n\r\nBamboo Harmony: Bigarade, Mimosa, Lá trà trắng\r\n\r\nIntoxicated: Mocha Coffee, thảo quả, vani\r\n\r\nLove don’t be shy: Neroli, Hoa cam, Marshmallow');
INSERT INTO `sanpham` (`id_sp`, `ten_sp`, `img`, `id_dm`, `luotxem`, `gia_cu`, `gia_moi`, `mota`, `chitiet`) VALUES
(79, 'Gift Set Jean Paul Gaultier Scandal', 'set10.png', 26, 0, 3650000, 3250000, 'Cám dỗ là có thật, và Scandal cũng có thật, chỉ là vì bạn chưa thử một lần Scandal lên da của mình mà thôi. Đã có quá nhiều sự ngạc nhiên và bất ngờ về Top note của cô nàng này ngay cú xịt đầu tiên, và những sự ngạc nhiên đó chỉ là có thể gói gọn bằng vài từ ngữ bột phát về mặt cảm xúc như “thơm quá vậy” hay chỉ 1 từ “Dâm”. Bạn đừng cười và cũng đừng cho rằng những lời nói trên là phóng đại, bởi nếu tiếp xúc với Scandal lần đầu, một số quan điểm cá nhân của bạn về việc “mình không thích nước hoa có mùi hương ngọt” sẽ có sự thay đổi đáng kể đó nhé. Scandal ngọt thực sự, bởi Mid note là mật ong, và Base note là sáp mật ong, chừng đó thôi đủ khiến bạn cảm thấy hơi ngọt phủ kín lên mùi hương này rồi. Nhưng hãng Jean Paul Gautier không cho phép cái “Ngọt” đó xảy ra một cách đơn giản như vậy đâu, Cam đỏ và Hoắc hương được kết hợp một cách tinh vi cùng lớp kem đầy hấp dẫn của Caramel, nhóm hương này vô tình đưa đối phương vào một khu vườn ngọt ngào, mê đắm, nhưng không hề hay biết đó là một m', 'Giới tính : Nữ\r\n\r\nXuất xứ : Pháp\r\n\r\nNồng độ : Eau de parfum\r\n\r\nPhát hành : 2017\r\n\r\nNhà pha chế : Jean Paul Gaultier\r\n\r\nNhóm hương : Hương Hoa cỏ Síp – Chypre Floral\r\n\r\nPhong cách : Hiện đại, mạnh mẽ, thanh lịch\r\n\r\nHương đầu: Cam đỏ, Hoa nhài tây\r\n\r\nHương giữa: Hương mật ong\r\n\r\nHương cuối: Cây hoắc hương'),
(80, 'Gift Set Burberry Her EDP', 'set11.png', 26, 0, 4750000, 3400000, 'Gift Set Burberry Her EDP Gồm: Nước Hoa 100ml + Mini 7,5ml + Dưỡng Thể 75ml\r\n\r\nĐược ví như buổi tiệc dành riêng cho các quý cô, Burberry Her đã khẳng định vị trí của mình chỉ qua vỏn vẹn một cái nhìn, một nốt hương. Rạng rỡ và đầy điểm nhấn, Burberry Her EDP như một bức thư tình được viết dưới ánh nắng của những ngày xuân: hồ hởi, đầy bất ngờ nhưng dịu dàng ấm áp.', 'Gift Set Burberry Her EDP Gồm: Nước Hoa 100ml + Mini 7,5ml + Dưỡng Thể 75ml\r\n\r\nNhóm nước hoa: Hương hoa cỏ trái cây\r\n\r\nGiới tính: Nữ\r\n\r\nNồng độ: EDP\r\n\r\nĐộ lưu hương: Lâu – 7 giờ đến 12 giờ\r\n\r\nPhong Cách: Quyến Rũ, Tinh Tế, Ngọt Ngào.\r\n\r\nHương đầu: Dâu rừng, Dâu tây, Dâu tằm, Nho đen, Cherry, Chanh vàng và Cam ngọt\r\nHương giữa: Hoa đồng thảo, Hoa nhài\r\nHương cuối: Hổ phách, Gỗ sồi, Xạ hương, Hoắc hương, Gỗ Cashmeran'),
(81, 'Set YSL Yves Saint Laurent Black Opium', 'set12.png', 26, 0, 4800000, 3900000, 'Gift Set YSL Yves Saint Laurent Black Opium mới được công bố như một tiết mục biểu diễn rock’n’roll cổ điển nổi bật khía cạnh huyền ảo, bí ẩn của thương hiệu YSL.\r\n\r\nSet Gồm :\r\n– Nước hoa Yves Saint Laurent Black Opium EDP 90ML\r\n– Nước hoa Yves Saint Laurent Black Opium EDP 7.5ML\r\n– Son YSL Mầu 70', 'Set Gồm :\r\n– Nước hoa Yves Saint Laurent Black Opium EDP 90ML\r\n– Nước hoa Yves Saint Laurent Black Opium EDP 7.5ML\r\n– Son YSL Mầu  70\r\nNhóm nước hoa: Hương Vani Phương Đông\r\n\r\nGiới tính: Nữ\r\n\r\nNăm ra mắt: 2022\r\n\r\nNồng độ: Eau De Parfum\r\n\r\nPhong cách: Ngọt ngào, Quyến rũ, Nổi bật, Bí ẩn\r\n\r\nHương đầu: Hồng tiêu, Hoa cam, Quả lê\r\nHương giữa: Cà phê, Hoa nhài, Hạnh nhân đắng, Cam thảo\r\nHương cuối: Hương Vani, Cây hoắc hương, Gỗ tuyết tùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_kh` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `sdt` varchar(200) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id_kh`, `username`, `password`, `email`, `address`, `sdt`, `role`) VALUES
(7, 'dongph35428', '1234567', 'donglvph35429@fpt.edu.vn', 'PFT polytechnic', '0393815392', 1),
(23, 'dong', '123456', 'pinocchio2k4@gmail.com', 'PFT polytechnic', '0093815392', 0),
(29, 'phongph34944', '12345', 'Levandong2k4@gmail.com', 'PFT polytechnic', '0093815392', 0),
(30, 'dong123', '12345', 'pinocchio2k4@gmail.com', 'PFT polytechnic', '0093815392', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_bl`),
  ADD KEY `lk_bl_sp` (`id_sp`),
  ADD KEY `lk_bl_tk` (`id_user`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_dh`),
  ADD KEY `lk_dh_tk` (`id_kh`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_gh`),
  ADD KEY `lk_gh_sp` (`id_sp`),
  ADD KEY `lk_gh_kh` (`id_kh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `lk_sp_loai` (`id_dm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_kh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_dh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_gh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id_kh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `lk_bl_sp` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`),
  ADD CONSTRAINT `lk_bl_tk` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id_kh`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `lk_dh_tk` FOREIGN KEY (`id_kh`) REFERENCES `taikhoan` (`id_kh`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `lk_gh_kh` FOREIGN KEY (`id_kh`) REFERENCES `taikhoan` (`id_kh`),
  ADD CONSTRAINT `lk_gh_sp` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sp_loai` FOREIGN KEY (`id_dm`) REFERENCES `loai` (`id_dm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

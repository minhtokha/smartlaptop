-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 05:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_laptop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `mactdh` int(10) NOT NULL,
  `madh` int(10) NOT NULL,
  `masanpham` int(10) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` double NOT NULL,
  `sotien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ctdonhang`
--

INSERT INTO `ctdonhang` (`mactdh`, `madh`, `masanpham`, `soluong`, `gia`, `sotien`) VALUES
(1, 1, 4, 1, 35000000, 35000000),
(2, 2, 2, 1, 40000000, 40000000),
(3, 3, 5, 1, 17000000, 17000000),
(4, 4, 2, 1, 40000000, 40000000),
(5, 4, 3, 1, 38000000, 38000000),
(6, 5, 6, 1, 28000000, 28000000),
(7, 6, 6, 1, 28000000, 28000000),
(8, 6, 5, 1, 17000000, 17000000),
(9, 7, 1, 1, 10000000, 10000000),
(10, 8, 3, 1, 38000000, 38000000),
(11, 8, 6, 1, 28000000, 28000000),
(12, 9, 3, 2, 38000000, 76000000),
(13, 10, 4, 1, 35000000, 35000000),
(14, 10, 2, 2, 40000000, 80000000),
(15, 11, 18, 1, 82000000, 82000000),
(16, 11, 11, 1, 18000000, 18000000),
(17, 12, 4, 1, 35000000, 35000000),
(18, 13, 3, 1, 38000000, 38000000),
(19, 14, 3, 1, 38000000, 38000000),
(20, 15, 1, 1, 10000000, 10000000),
(21, 16, 3, 1, 38000000, 38000000),
(22, 17, 2, 1, 40000000, 40000000);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `madh` int(10) NOT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaydh` date NOT NULL,
  `diachi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongtien` double NOT NULL,
  `ngaygiao` date DEFAULT NULL,
  `tinhtrang` int(1) NOT NULL,
  `makh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`madh`, `tenkhachhang`, `ngaydh`, `diachi`, `sdt`, `email`, `tongtien`, `ngaygiao`, `tinhtrang`, `makh`) VALUES
(1, 'tominh', '2018-12-07', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 35000000, '2018-11-22', 5, 1),
(2, 'tominh', '2018-12-09', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 40000000, '2018-12-10', 0, 1),
(3, 'Nguyễn Văn A', '2018-12-10', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'giamdoc1603@gmail.com', 17000000, '2018-12-10', 0, 3),
(4, 'Nguyễn Văn A', '2018-12-10', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'giamdoc1603@gmail.com', 78000000, '2018-12-10', 0, 3),
(5, 'Tô Khả Minh', '2018-12-10', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'minhpro@gmail.com', 28000000, '2018-12-14', 0, 2),
(6, 'Tô Khả Minh', '2018-12-10', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'minhpro2061@gmail.com', 45000000, '2018-12-14', 0, 4),
(7, 'tominh', '2018-12-12', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 10000000, '2018-12-16', 0, 1),
(8, 'tominh', '2018-12-13', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 66000000, '2018-12-14', 0, 1),
(9, 'tominh', '2018-12-13', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 38000000, '2018-12-17', 0, 1),
(10, 'tominh', '2018-12-13', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 115000000, '2018-12-14', 0, 1),
(11, 'Tô Khả Minh                                                                ', '2018-12-13', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'ex@gmail', 100000000, '2018-12-17', 0, 5),
(12, 'Nguyen Minh Tri', '2018-12-14', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '039844754', 'tokhaminhIT1996@gmail.com', 35000000, '2018-12-14', 0, 1),
(13, 'tominh', '2018-12-21', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 38000000, '2018-12-25', 0, 1),
(14, 'Tô Khả Minh', '2018-12-22', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'minhpro2061@gmail.com', 38000000, '2018-12-26', 0, 4),
(15, 'tominh', '2018-12-28', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '434534', 'tokhaminhIT1996@gmail.com', 10000000, '2018-12-01', 0, 1),
(16, 'tominh', '2018-12-30', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 38000000, '2018-12-03', 0, 1),
(17, 'tominh', '2018-12-30', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com', 40000000, '2018-12-03', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(10) NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `password`, `tenkhachhang`, `diachi`, `sdt`, `email`) VALUES
(1, '123', 'tominh', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '2323', 'tokhaminhIT1996@gmail.com'),
(2, '123', 'Tô Khả Minh', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'minhpro@gmail.com'),
(3, '123', 'Nguyễn Văn A', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'giamdoc1603@gmail.com'),
(4, '123', 'Tô Khả Minh', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'minhpro2061@gmail.com'),
(5, '123', 'Tô Khả Minh                                                                ', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '0382795256', 'ex@gmail'),
(6, NULL, 'Tô Khả Minh', 'CC Đồng Diều Đường 152 Cao Lỗ phường 4 Quận 8 Hồ Chí Minh, Vietnam', '1827323', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloai` int(10) NOT NULL,
  `tenloai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloai`, `tenloai`, `mota`) VALUES
(1, 'Học Tập - Văn Phòng', 'Laptop cấu hình nhẹ dành cho học sinh và nhân viên văn phòng!'),
(2, 'Đồ Họa - Kỹ Thuật', 'Laptop cấu hình trung cho sinh viên và các nhân viên thiết kế hoặc lập trình!'),
(3, 'Gaming', 'Laptop cấu hình cao hổ trợ cho các loại game cần cấu hình mạnh để vận hành mượt mà và ổn định!'),
(4, 'Cao cấp - Sang Trọng', 'Laptop cấu hình cao cấp, thiết kế bắt mắt và sang trọng thể hiện đẳng cấp người sử dụng!');

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `mansx` int(10) NOT NULL,
  `tennsx` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`mansx`, `tennsx`, `hinhanh`) VALUES
(1, 'MACBOOK', 'macbook.jpg'),
(2, 'LENOVO', 'lenovo.png'),
(3, 'MSI', 'msi.png'),
(4, 'HP', 'hp.png'),
(5, 'DELL', 'dell.png'),
(6, 'ASUS', 'asus.png'),
(7, 'ACER', 'acer.png'),
(8, 'NeViaa', '1515141552953.1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(10) NOT NULL,
  `ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `luongton` int(11) NOT NULL,
  `maloai` int(10) DEFAULT NULL,
  `mansx` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `ten`, `mota`, `hinhanh`, `gia`, `luongton`, `maloai`, `mansx`) VALUES
(1, 'Acer Aspire E5 476', 'Model	Acer Aspire E5-476-34C0 (NX.GWTSV.006)\r\nCPU	Intel® Core™ i3-8130U (2.20Ghz upto 3.40GHz, 2Cores, 4Threads, 4MB Cache, FSB 4GT/s)\r\nRAM	4GB DDR4-2400Mhz\r\nỔ cứng	1TB HDD 5400rpm\r\nCD/DVD	DVD±R/RW supperMulti DL\r\nCard VGA	Intel® UHD Graphics 620\r\nMàn hình	14.0-inch HD (1366x768) resolution ComfyView\r\nKết nối	Wifi 802.11ac + Bluetooth 4.0\r\nTích hợp	2x USB 3.0\r\n1x USB 2.0\r\nVGA\r\nNetwork (RJ-45)\r\nHDMI Output\r\nTrọng lượng	2.1 kg\r\nPin	4-Cell 2800 mAh\r\nHệ điều hành	Free Dos', 'acer-aspire-e5-476-grey.jpg', 10000000, 5, 1, 7),
(2, 'Acer Predator Helios 501', 'Model	Acer Predator Helios 500 PH517-51-90KL (NH.Q3PSV.002)\r\nCPU	Intel® Core™ i9-8950HK (2.90GHz upto 4.80GHz, 6Cores, 12Threads, 12MB cache, FSB 8GT/s)\r\nRAM	32GB DDR4-2666MHz , Max 64GB\r\nỔ cứng	512GB SSD M.2 PCIe + 2TB HDD 5400rpm\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® GTX 1070 8GB GDDR5\r\nMàn hình	17.3-inch UHD (3840 x 2160) IPS, Anti-Glare\r\nKết nối	Wifi 802.11ac + Bluetooth 4.2\r\nTích hợp	3x USB 3.0\r\n1x Network (RJ-45)\r\n1x DisplayPort™\r\n1x HDMI Output\r\n1x Thunderbolt\r\nTrọng lượng	4 kg\r\nPin	4-cell 4810 mAh\r\nHệ điều hành	Windows 10 bản quyền', 'Acer_Predator_Helios_500_PH517.png', 40000000, 8, 3, 7),
(3, 'Acer Predator Helios 300', 'Model	Acer Predator Helios 300 PH315-51-759Y (NH.Q3FSV.004)\r\nCPU	Intel® Core™ i7-8750H (2.20GHz upto 4.10GHz, 6Cores, 12Threads, 9MB cache, FSB 8GT/s)\r\nRAM	16GB DDR4-2666MHz , Max 32GB\r\nỔ cứng	256GB SSD M.2 PCIe + 1TB HDD 5400rpm\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® GTX 1060 6GB GDDR5\r\nMàn hình	15.6-inch FHD (1920 x 1080) IPS, Anti-Glare\r\nKết nối	Wifi 802.11ac + Bluetooth 4.2\r\nTích hợp	1x HDMI\r\n2x USB 2.0\r\n1x USB 3.0\r\n1x USB-C 3.1 Gen 1\r\n1x RJ-45\r\nTrọng lượng	2.7 Kg\r\nPin	4-Cell 48 WHr\r\nHệ điều hành	FreeDos', 'Acer_Predator_Helios_300_G3-572-79S6.png', 38000000, 10, 2, 7),
(4, 'Asus Rog Strix Hero', 'Model	Asus ROG Strix Hero GL503VM-GZ219TZ\r\nCPU	Intel® Core™ i7-7700HQ (2.8GHz upto 3.8GHz, 4Cores, 8Threads, 6MB cache, FSB 8GT/s)\r\nRAM	8GB DDR4 2400MHz (1x8GB), 2 slot Ram, Max 32GB\r\nỔ cứng	1TB HDD 5400rpm (SSHD 8GB) + 1 slot SSD M2 PCIe3x4\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® GTX 1060 3GB GDDR5\r\nMàn hình	15.6-inch Full HD (1920x1080) IPS-level panel, 120Hz, 72% NTSC\r\nKết nối	Wi-Fi 802.11 AC (2x2) + Bluetooth V4.1\r\nBàn phím	Backlit full-sized chiclet keyboard (RGB Full-color)\r\nTích hợp	USB 3.1 Gen1 (Type-C), USB 3.1 Gen1, USB 2.0, mDP 1.2, HDMI 1.4, RJ-45 Jack, 2-in-1 card reader, 3.5mm headphone and microphone combo jack, Kensington lock\r\nTrọng luợng	2.3 kg\r\nPin	4 Cells 64 Whrs\r\nH? di?u hành	Windows 10 bản quyền', 'asus-rog-strix-hero-gl503.jpg', 35000000, 8, 3, 6),
(5, 'Asus Zenbook Ux410 Rose', 'Model	Asus Zenbook UX410UF-GV113T\r\nCPU	Intel® Core™ i5-8250U (1.60GHz Up to 3.40 GHz, 4Cores, 8Threads, 6MB Cache, FSB 4GT/s)\r\nRAM	4GB DDR4 2400Mhz (Onboard) + 1 Slot RAM, Max 12GB\r\nỔ cứng	256GB SSD M.2 Sata\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® MX130 2GB GDDR5\r\nMàn hình	14.0-inch FHD (1920x1080) 60Hz Anti-Glare Panel with 72% NTSC with 178˚ wide-viewing angle display\r\nKết nối	802.11ac + Bluetooth 4.0, 2.4 GHz\r\nTích hợp	1 x COMBO audio jack\r\n1 x Type A USB3.0 (USB3.1 GEN1)\r\n1 x Type C USB3.0 (USB3.1 GEN1) support display\r\n2 x USB 2.0 port(s)\r\n1 x HDMI\r\nTrọng lượng	1.4 kg\r\nPin	3 Cells 48 Whrs\r\nHệ điều hành	Windows 10 bản quyền', 'asus-zenbook-ux410-rose-gold-12.jpg', 17000000, 12, 1, 6),
(6, 'Asus TUF Gaming FX504', 'Model	Asus TUF Gaming FX504GE-E4059T\r\nCPU	Intel® Core™ i7-8750H (2.20GHz upto 4.10GHz, 6Cores, 12Threads, 9MB cache, FSB 8GT/s)\r\nRAM	8GB DDR4 2666MHz, 2 Slots RAM, Max 32GB\r\nỔ cứng	1TB HDD 5400rpm (SSHD 8GB) + 1 Slot SSD M.2 PCIe\r\nHỗ trợ tối đa 16GB bộ nhớ Intel Optane\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® GTX 1050Ti 4GB GDDR5\r\nMàn hình	15.6-inch FHD IPS (1920x1080) Non-Glare LED Backlit\"\r\nKết nối	Wifi 802.11 AC (2x2) + Bluetooth 4.1\r\nBàn phím	Backlit full-sized chiclet keyboard (single-color)\r\nTích hợp	1 x giắc cắm âm thanh COMBO\r\n1 x USB2.0 Type-A\r\n2 x USB 3.0 Type-A\r\n1 x Đầu cắm RJ45 LAN để lắp mạng LAN\r\n1 x HDMI, Hỗ trợ HDMI 1.4\r\nTrọng lượng	2.2 Kg\r\nPin	3 Cells 48 Whrs\r\nHệ điều hành	Windows 10 bản quyền', 'Asus_TUF_Gaming_FX504-1.png', 28000000, 6, 3, 6),
(7, 'MSI GF63 8RD', 'Model	MSI GF63 8RC-243VNZ\r\nCPU	Intel® Core i5-8300H (2.3GHz upto 4.0GHz, 4Cores, 8Threads, 8MB cache, FSB 8GT/s)\r\nRAM	8GB DDR4-2666Mhz, 2 Slots, Max 32GB\r\nỔ cứng	1TB HDD 5400rpm + 1 Slot SSD M.2 PCIe\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® GTX 1050 4GB GDDR5\r\nMàn hình	15.6-inch FHD (1920x1080), IPS-Level 45% NTSC, Thin Bezel\r\nKết nối	802.11 ac Wi-Fi + Bluetooth v5\r\nBàn phím	Steelseries Backlight Keyboard (Single-Color, Red)\r\nTích hợp	1x Type-C USB3.1 Gen1\r\n3x Type-A USB3.1 Gen1\r\n1x RJ45\r\n1x (4K @ 30Hz) HDMI\r\n1x Mic-in\r\n1x Headphone-out\r\nTrọng lượng	1.86 Kg\r\nPin	3-Cell 51 Whr\r\nHệ điều hành	Windows 10 Home bản quyền', 'MSI_GF63_8RD.jpg', 57000000, 8, 3, 3),
(8, 'MSI P65 8RF1', 'Model	MSI P65 8RE Creator\r\nCPU	Intel® Core™ i7-8750H (2.20GHz upto 4.10GHz, 6Cores, 12Threads, 9MB cache, FSB 8GT/s)\r\nRAM	16GB DDR4-2666MHz, 2 Slot, Max 64GB\r\nỔ cứng	256GB SSD M.2 PCIe3x4 NMVe (Super Raid)\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® GTX 1060 6GB GDDR5 (Max-Q)\r\nMàn hình	15.6-inch FHD (1920x1080), IPS-Level\r\nKết nối	802.11 ac Wi-Fi + Bluetooth V5\r\nBàn phím	Steelseries Backlight Keyboard (Single-Color, White)\r\nTản nhiệt	Cooler Boost Trinity (3 Quạt + 4 Ống dẫn nhiệt)\r\nTích hợp	1x Type-C (USB3.1 Gen2 / DP / Thunderbolt™3)\r\n2x Type-A USB3.1 Gen1\r\n1x Type-A USB3.1 Gen2\r\n1x RJ45\r\n1x (4K @ 60Hz) HDMI\r\n1x Mini-DisplayPort\r\n1x Mic-in\r\n1x Headphone-out (HiFi)\r\n1x Finger\r\nTrọng lượng	1.88 kg\r\nPin	4-Cell 82Whr\r\nHệ điều hành	Windows 10 bản quyền', 'MSI_P65_8RF1.png', 71000000, 4, 4, 3),
(9, 'MSI WE73 8SK', 'Model	MSI WE73 8SK\r\nCPU	Intel® Xeon® E-2176M (2.70GHz upto 4.40GHz, 6Cores, 12Threads, 12MB cache, FSB 8GT/s)\r\nRAM	32GB DDR4 Buss 2666Mhz (ECC), 2 Slots, Max 64GB\r\nỔ cứng	256GB SSD M.2 PCIe3x4 NMVe + 1TB HDD 7200rpm\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® Quadro P3200 6GB GDDR5\r\nMàn hình	17.3-inch FHD (1920x1080), 120Hz wideview 94%NTSC color Anti-Glare 3ms\r\nKết nối	Intel Wireless-AC 9560 (2*2 a/c) + BT5\r\nTích hợp	1x Mic-in\r\n1x Headphone-out (SPDIF)\r\n1x Type-C USB3.1 Gen1\r\n3x Type-A USB3.1 Gen1\r\n1x RJ45\r\n1x SD (XC/HC)\r\n1x (4K @ 30Hz) HDMI\r\n1x Mini-DisplayPort\r\nTrọng lượng	2.79 Kg\r\nPin	6-Cell 51Whr\r\nHệ điều hành	Windows 10 Home/High End Devices For 3EM PPP (w/o ODD)', 'MSI_WE73_8SK.png', 49000000, 6, 2, 3),
(10, 'HP Pavilion 15 Gold', 'Model	HP Pavilion 15-cs0103TX (4SQ43PA) (Gold)\r\nCPU	Intel® Core™ i7-8550U (1.8GHz Upto 4.0GHz, 4Cores, 8Threads, 8MB cache, FSB 4GT/s)\r\nRAM	8GB DDR4-2400MHz, 2 Slots\r\nỔ cứng	1TB HDD 5400rpm + 1 Slot SSD M.2 Sata\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® MX130 2GB GDDR5 + Intel® UHD Graphics 620\r\nMàn hình	15.6-inch diagonal FHD SVA BrightView WLED-backlit (1920x1080)\r\nKết nối	Intel 802.11a/b/g/n/ac (1x1) + Bluetooth 4.2\r\nBàn phím	Full-size island-style keyboard\r\nTích hợp	1x HDMI\r\n1x headphone/microphone combo\r\n1x RJ-45\r\n1x USB 3.1 Type-C™ Gen 1\r\n2x USB 3.1 Gen 1\r\n1x multi-format SD media card reader\r\nTrọng lượng	1.85 kg\r\nPin	3-Cell 41 Whr Li-ion\r\nHệ điều hành	Windows 10 bản quyền', '300x300x-HP_Pavilion_15-gold2.jpg', 17000000, 8, 1, 4),
(11, 'HP 430 G5', 'Model	HP Probook 430 G5-4SS49PA (Silver)\r\nCPU	Intel® Core™ i3-8130U (2.20Ghz upto 3.40GHz, 2Cores, 4Threads, 4MB Cache, FSB 4GT/s)\r\nRAM	4GB DDR4 Bus 2400MHz, 2 Slots, Max 32GB\r\nỔ cứng	500GB HDD 5400rpm + 1 Slot SSD M.2 PCIe\r\nCD/DVD	None\r\nCard VGA	Intel® UHD Graphics 620\r\nMàn hình	13.3-inch diagonal HD SVA anti-glare LED-backlit, 220 cd/m², 45% sRGB (1366 x 768)\r\nKết nối	Realtek 802.11ac (2x2) Wi-Fi + Bluetooth 4.2\r\nBàn phím	HP Premium Keyboard, full-size island-style, spill resistant\r\nTích hợp	1x USB 3.1 Type-C™ Gen 1\r\n2x USB 3.0\r\n1x HDMI 1.4b\r\n1x RJ-45\r\n1x VGA\r\n1x headphone/microphone combo\r\n1x AC power\r\nTrọng lượng	1.5 Kg\r\nPin	3-Cell 48 Whr Li-ion\r\nHệ điều hành	FreeDos', 'HP-430-G5.jpg', 18000000, 6, 2, 4),
(12, 'HP Pavilion Gaming 15', 'Model	HP Pavilion Gaming 15-cx0177TX (5EF42PA)\r\nCPU	Intel® Core i5-8300H (2.3GHz upto 4.0GHz, 4Cores, 8Threads, 8MB cache, FSB 8GT/s)\r\nRAM	8GB DDR4-2666MHz, 2 Slots, Max 32GB\r\nỔ cứng	1TB HDD 7200rpm + 1 Slot SSD M.2 PCIe\r\nCD/DVD	None\r\nCard VGA	NVIDIA GeForce® GTX 1050 4GB GDDR5 + Intel® UHD Graphics 630\r\nMàn hình	15.6-inch diagonal FHD IPS anti-glare micro-edge WLED-backlit (1920 x 1080)\r\nKết nối	Intel® Wireless-AC 9560 802.11a/b/g/n/ac (2x2) + Bluetooth® 5\r\nBàn phím	Full-size island-style backlit keyboard\r\nTích hợp	1x HDMI 2.0\r\n1x Headphone/microphone combo\r\n1x RJ-45\r\n1x USB 3.1 Type-C™ Gen 1 (Data Transfer up to 5 Gb/s)\r\n3x USB 3.1 Gen 1 (Data transfer only)\r\n1x Multi-format SD media card reader\r\nTrọng lượng	2.17 kg\r\nPin	3-Cell 52.5 Whr\r\nHệ điều hành	Windows 10 bản quyền', '300x300x-HP_Pavilion_Gaming_15.jpg', 29000000, 8, 3, 4),
(13, 'Lenovo Ideapad Y520', '\r\nBảo hành (tháng):	12\r\nThương hiệu:	Lenovo\r\nTính năng:	Multimedia\r\nMàu sắc:	Đen\r\nSeries:	Lenovo IdeaPad\r\nMã:	Ideapad Y520-15IKBN 80WK015GVN\r\nCPU Series:	Intel Core i7 7th Gen\r\nCPU:	i7-7700HQ\r\nSố nhân:	4\r\nXung nhịp tối thiếu:	2.8 GHz\r\nCache CPU:	6MB\r\nHệ điều hành:	Windows 10\r\nRAM:	8GB\r\nRAM tối đa:	32GB\r\nKích thước màn hình:	15.6\"\r\nMàn hình cảm ứng:	Không\r\nĐộ phân giải:	1920 x 1080\r\nChuẩn màn hình:	Full HD\r\nCard màn hình Onboard:	Intel HD Graphics 630\r\nCard màn hình gắn ngoài:	NVIDIA GeForce GTX 1050\r\nBộ nhớ VGA:	4GB\r\nHDD:	1TB\r\nDung lượng:	128GB\r\nỔ đĩa quang:	Không\r\nKhu phím số:	Có\r\nLED Bàn phím:	Đơn sắc\r\nBàn phím cơ:	Không\r\nĐầu đọc thẻ nhớ:	Có\r\nWebcam:	Có\r\nSố cổng USB:	4\r\nSố cổng HDMI:	Chưa xác định\r\nCổng LAN:	Có\r\nCổng VGA:	Không\r\nKích thước:	380(W) x 256(D) x 25.8(H) mm\r\nKhối lượng:	2.4 Kg\r\nSố cell pin:	3', 'lenovo-ideapad-y520.jpg', 50000000, 6, 4, 2),
(14, 'Lenovo V330 14IKBT', 'Bảo hành (tháng):	12\r\nThương hiệu:	Lenovo\r\nTính năng:	Office\r\nMàu sắc:	Đen\r\nSeries:	Không\r\nMã:	Lenovo V330-14IKBR-81B0008LVN\r\nCPU Series:	Intel Core i5 8th Gen\r\nCPU:	i5-8250U\r\nSố nhân:	4\r\nXung nhịp tối thiếu:	1.6 GHz\r\nCache CPU:	6MB\r\nHệ điều hành:	Không có\r\nRAM:	4GB\r\nRAM tối đa:	12GB\r\nKích thước màn hình:	14.0\"\r\nMàn hình cảm ứng:	Không\r\nĐộ phân giải:	1366 x 768\r\nChuẩn màn hình:	HD', 'lenovo-v330-14ikbr.jpg', 21000000, 8, 2, 2),
(15, 'Lenovo Thinkpad L380', 'Bảo hành (tháng):	36\r\nThương hiệu:	Lenovo\r\nTính năng:	Office\r\nMàu sắc:	Bạc\r\nSeries:	ThinkPad\r\nMã:	Lenovo Thinkpad L380-20M5S01500\r\nCPU Series:	Intel Core i5 8th Gen\r\nCPU:	i5-8250U\r\nSố nhân:	4\r\nXung nhịp tối thiếu:	1.6 GHz\r\nCache CPU:	6MB\r\nHệ điều hành:	Không có\r\nRAM:	4GB\r\nRAM tối đa:	16GB\r\nKích thước màn hình:	13.3\"\r\nMàn hình cảm ứng:	Không\r\nĐộ phân giải:	1920 x 1080\r\nChuẩn màn hình:	Full HD\r\nCard màn hình Onboard:	Intel HD Graphics 620\r\nCard màn hình gắn ngoài:	Không có\r\nBộ nhớ VGA:	Không\r\nHDD:	Không có\r\nDung lượng:	256GB\r\nỔ đĩa quang:	Không\r\nKhu phím số:	Không\r\nLED Bàn phím:	Đơn sắc\r\nBàn phím cơ:	Không\r\nĐầu đọc thẻ nhớ:	Có\r\nWebcam:	Có\r\nSố cổng USB:	4\r\nSố cổng HDMI:	1\r\nCổng LAN:	Có\r\nCổng VGA:	Không\r\nKích thước:	322(W) x 224.2(D) x 18.8(H) mm\r\nKhối lượng:	1.47 Kg\r\nSố cell pin:	4', 'lenovo-thinkpad-l380.jpg', 29000000, 6, 1, 2),
(16, 'Macbook MQD32', 'Bảo hành (tháng):	12\r\nThương hiệu:	Apple\r\nTính năng:	Không\r\nMàu sắc:	Bạc\r\nSeries:	Apple MacBook Air\r\nMã:	MQD32\r\nCPU Series:	Intel Core i5\r\nCPU:	i5\r\nSố nhân:	N/A\r\nXung nhịp tối thiếu:	1.8 GHz\r\nCache CPU:	N/A\r\nHệ điều hành:	OS X\r\nRAM:	8GB\r\nRAM tối đa:	Không\r\nKích thước màn hình:	13.3\"\r\nMàn hình cảm ứng:	Không\r\nĐộ phân giải:	1440 x 900\r\nChuẩn màn hình:	Không\r\nCard màn hình Onboard:	Intel HD Graphics 6000\r\nCard màn hình gắn ngoài:	Không có\r\nBộ nhớ VGA:	Không\r\nHDD:	Không có\r\nDung lượng:	128GB\r\nỔ đĩa quang:	Không\r\nKhu phím số:	Không\r\nLED Bàn phím:	Đơn sắc\r\nBàn phím cơ:	Không\r\nĐầu đọc thẻ nhớ:	Không\r\nWebcam:	Có\r\nSố cổng USB:	2\r\nSố cổng HDMI:	Không\r\nCổng LAN:	Không\r\nCổng VGA:	Không\r\nKích thước:	Đang cập nhật\r\nKhối lượng:	Đang cập nhật\r\nSố cell pin:	Không', 'macbook-MQD32.jpg', 32000000, 2, 4, 1),
(17, 'Macbook MPXU2', 'Bảo hành (tháng):	12\r\nThương hiệu:	Apple\r\nTính năng:	Multimedia\r\nMàu sắc:	Bạc\r\nSeries:	Apple MacBook\r\nMã:	MPXU2LL/A\r\nCPU Series:	i5\r\nCPU:	i5\r\nSố nhân:	2\r\nXung nhịp tối thiếu:	2.3 GHz\r\nCache CPU:	3MB\r\nHệ điều hành:	OS X\r\nRAM:	8GB\r\nRAM tối đa:	Đang cập nhật\r\nKích thước màn hình:	13.3\"\r\nMàn hình cảm ứng:	Không\r\nĐộ phân giải:	2560 x 1600\r\nChuẩn màn hình:	Retina', 'Macbook-MPXU2.jpg', 28000000, 5, 1, 1),
(18, 'Macbook MTPPT2', 'Bảo hành (tháng):	12\r\nThương hiệu:	Apple\r\nTính năng:	Office\r\nMàu sắc:	Xám\r\nSeries:	Apple MacBook\r\nMã:	3398\r\nCPU Series:	Intel Core i7 7th Gen\r\nCPU:	i7-7820HQ\r\nSố nhân:	4\r\nXung nhịp tối thiếu:	2.9 GHz\r\nCache CPU:	6MB\r\nHệ điều hành:	OS X\r\nRAM:	16GB\r\nRAM tối đa:	Đang cập nhật\r\nKích thước màn hình:	15.4\"\r\nMàn hình cảm ứng:	Không\r\nĐộ phân giải:	2880 x 1800\r\nChuẩn màn hình:	Retina', 'Macbook-MTPPT2.png', 82000000, 5, 4, 1),
(19, 'Laptop Dell Inspiron 3576', 'CPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	HDMI 1.4, 2 x USB 3.0, LAN (RJ45), USB 2.0\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN rời\r\nKích thước:	Dày 23.65 mm, 2.3 Kg', '1515141552953.1.jpg', 14690000, 19, 1, 5),
(20, 'Acer Aspire E5-476-ht', 'zxcvxcz', 'dell-inspiron-3576-p63f002n76f-450-600x600.png', 99000000, 10, 1, 1),
(21, 'Dell Gaming hose', 'aljeklooieuwirn,mnfadsf', '1515141552953.1.jpg', 20000000, 2323, 3, 8),
(22, 'Dell Gaming hose', 'dsfsdaf', 'dell_alienware_m15.jpg', 900000000, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thongtindichvu`
--

CREATE TABLE `thongtindichvu` (
  `matt` int(10) NOT NULL,
  `tentt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaydang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongtindichvu`
--

INSERT INTO `thongtindichvu` (`matt`, `tentt`, `noidung`, `hinhanh`, `ngaydang`) VALUES
(1, 'Asus FX504: chiếc laptop gaming khai sinh dòng Asus TUF Gaming', '<p style=\"font-size: 20px;\">\r\nVào ngày 03/04/2018 vừa rồi, cùng với việc Intel công bố thế hệ chip thế hệ 8 Coffee Lake-H mới, Asus cũng đã cho ra mắt hàng loạt sản phẩm laptop gaming mới trang bị chip Intel thế hệ 8 này. Và Asus cũng đã cho ra mắt một dòng laptop gaming Ultimate Force (TUF) mới với sản phẩm laptop đầu tiên là Asus TUF Gaming FX504 với hiệu năng bền bỉ và mức giá phải chăng.\r\n</p>\r\n<p style=\"font-size: 20px;\">\r\nĐể đảm bảo tuổi thọ của hệ thống và hiệu suất hoạt động ổn định, Asus FX504 có tính năng chống bụi (ADC) được cấp bằng sáng chế và được trang bị bộ xử lý Intel® Coffee Lake-H thế hệ mới nhất và đồ họa NVIDIA® GeForce® GTX 10-Series. Asus FX504 còn có bàn phím chơi game với tuổi thọ 20 triệu phím bấm, màn hình hiển thị 120Hz ở phiên bản cao nhất và âm thanh vòm 7.1.\r\n</p>\r\n<h2>Hiệu năng và khả năng di động</h2>\r\n<p style=\"font-size: 20px;\">\r\nAsus FX504 được trang bị vi xử lý Coffee Lake-H mạnh mẽ với Hexa-Core cho phiên bản Core i7 và card đồ họa NVIDIA GeForce GTX 1050Ti với hỗ trợ đầy đủ Microsoft® DirectX® 12. Bên cạnh đó thiết kế với kích thước 2.5cm và trọng lượng chỉ 2.3kg, Asus FX504 cung cấp sự kết hợp giữa tính năng và khả năng di động thật tuyệt vời khi thực hiện đa nhiệm, giải trí và chơi game on-the-go.\r\n</p>\r\n<h2>Hình ảnh siêu mượt với 120 khung hình/giây</h2>\r\n<p style=\"font-size: 20px;\">\r\nAsus FX504 có màn hình 15.6 inch với tốc độ quét cực nhanh 120Hz (cho phiên bản cao nhất), thời gian đáp ứng 3ms từ gray-to-gray (GTG), khoảng màu 100% sRGB và công nghệ màn hình rộng. Ở tốc độ 120Hz, màn hình có thể hiển thị lên tới 120 khung hình/giây (fps), vì vậy mọi thước phim trở nên sống động hơn và các trò chơi chạy mượt hơn để cho phép người chơi phản ứng ngay lập tức với hành động trên màn hình, tạo cho họ lợi thế trong các tựa game nhanh. Màn hình có độ phân giải màu rộng 100% sRGB (tương đương 94% NTSC) và công nghệ IPS để đảm bảo hình ảnh sắc nét và rõ ràng với màu chính xác và nhất quán, ngay cả khi nhìn từ các vị trí góc nhìn hẹp. Màn hình cũng được tráng một lớp matte để loại bỏ ánh sáng chói lóa hoặc bóng ma.\r\n</p>\r\n<h2>Lưu trữ FireCuda và hỗ trợ bộ nhớ Intel Optane</h2>\r\n<p style=\"font-size: 20px;\">\r\nHiệu suất với độ bền được yêu cầu đối với tất cả các sản phẩm của TUF, vì vậy Asus FX504 được trang bị một ổ cứng 1TB 5400rpm FireCuda™ (SSHD) tải các trò chơi nhanh gấp đôi so với ổ cứng truyền thống 1TB 5400rpm. Bộ nhớ flash của FireCuda hoạt động giống như một bộ nhớ cache bằng cách tiết kiệm dữ liệu thường xuyên truy cập mà không cần truy cập vào ổ cứng, dẫn đến tiêu thụ điện năng thấp hơn, tăng hiệu năng hệ thống và độ bền. Nó cũng cung cấp một hệ thống yên tĩnh, ổn định hơn.\r\n</p>\r\n<p style=\"font-size: 20px;\">\r\nNgoài ra, Asus FX504 đươc trang bị bộ nhớ Intel Optane™ 16GB để tăng tốc độ truy cập dữ liệu một cách đáng kể. Nó hoạt động như bộ nhớ đệm giúp giảm thời gian khởi động các tập tin thường xuyên sử dụng. Intel Optane™ tăng hiệu năng tổng thể hệ thống lên đến 39%, đáp ứng gấp đôi hiệu suất làm việc hàng ngày, làm được nhiều việc hơn, tiết kiệm thời gian hơn. Với bộ nhớ Intel Optane, bạn sẽ tiết kiệm được chi phí so với ổ SSD phổ biến.\r\n</p>\r\n<h2>Công nghệ tản nhiệt HyperCool</h2>\r\n<p style=\"font-size: 20px;\">\r\nThiết kế tản nhiệt của Asus FX504 giúp kéo dài đáng kể tuổi thọ của máy và cung cấp sự ổn định trong suốt những cuộc chiến dài hơi căng thẳng. Công nghệ HyperCool kết hợp với hệ thống ADC được cấp bằng sáng chế với tính năng Over-Over giúp thải ra các hạt bụi và bụi bẩn có hại thông qua hai đường hầm dành riêng để tránh tích tụ trong vây nhiệt. Chức năng Fan Overboost cung cấp cho người dùng ba chế độ khác nhau cho sự cân bằng hoàn hảo giữa hiệu suất của quạt và tiếng ồn. Các tính năng làm mát bổ sung bao gồm một cặp ống dẫn bằng đồng và một hệ thống quạt kép để làm mát bộ vi xử lý và card đồ họa một cách độc lập, trong khi nắp hình thang cắt tối ưu luồng không khí để tăng hiệu suất nhiệt lên tới 27% so với khung máy tính xách tay tiêu chuẩn.\r\n</p>\r\n', 'asus_tuf_gaming_fx504_1.png', NULL),
(3, 'Danh sách các dòng laptop gaming được trang bị Coffee Lake-H', '<p style=\"font-size: 20px;\">\r\nNhư thường lệ khi một thế hệ bộ xử lý mới xuất hiện, sẽ có rất nhiều thiết bị mới ở dòng đầu tiên được sản xuất sẵn chỉ chờ đợi để ra mắt cùng với nền tảng mới và việc phát hành của nền tảng Coffee Lake-H vừa rồi cũng không phải là một ngoại lệ. Gần như mọi nhà sản xuất chính sẽ cập nhật các dòng sản phẩm tương ứng với mọi thứ từ nâng cấp bộ vi xử lý đơn giản để hoàn thiện cho tới thay đổi lại thiết kế.\r\n</p>\r\n<p style=\"font-size: 20px;\">\r\nDanh sách các dòng laptop sau đây sẽ là một trong số những chiếc đầu tiên trang bị chip Coffee Lake-H và tất cả chúng đều được dự kiến ​​sẽ có mặt trong tháng tới. Lưu ý rằng đây là các mẫu laptop đã được xác nhận tại thời điểm xuất bản. Mục đích của danh sách này là cung cấp một tài liệu tham khảo ngắn gọn và dễ hiểu về những gì mà những người dùng máy tính xách tay mới có thể nghiên cứu để sở hữu một cỗ máy gaming cho mùa hè này.\r\n</p>', 'danh_s_ch_laptop_trang_b_coffee_lake_h.png', NULL),
(4, 'Asus ROG Strix GL12: máy tính E-Sports với SSD có thể tháo lắp ở mặt trước', '<p style=\"font-size: 20px;\">\r\nAsus ROG Strix GL12 là một máy tính để bàn chơi game có một thiết kế sắc nét và góc cạnh nổi bật bởi các thanh ánh sáng RGB trên bảng điều khiển phía trước. Nó có tính năng ép xung với bộ xử lý Intel thế hệ 8 Core i7 và các tùy chọn card đồ họa bắt đầu với GTX 1060 và đi lên từ đó. Việc ép xung CPU được sao lưu bằng cách làm lạnh chất lỏng để giữ nhiệt độ bên trong hộp.\r\n</p>\r\n<p style=\"font-size: 20px;\">\r\nAsus đang đẩy chiếc máy tính để bàn này trở thành một lựa chọn tuyệt vời cho mảng thể thao E-Sports và LAN với thanh ngang để hỗ trợ GPU trong quá trình vận chuyển và để ngăn các thẻ lớn khỏi bị chệch hướng và gây áp lực lên cổng PCI-E. Họ cũng quảng cáo vị trí SSD có thể tháo lắp trực tiếp ở mặt trước là lý tưởng cho E-Sports, mặc dù trong hầu hết các giải đấu, người chơi chỉ được phép sử dụng các thiết bị ngoại vi như bàn phím, chuột, chiếu và đôi khi là tai nghe. Một vị trí SSD có thể tháo lắp trực tiếp có thể là một sự mới mẻ về Thể thao Điện tử E-Sports.\r\n</p>\r\n<p style=\"font-size: 20px;\">\r\nThông số kỹ thuật có sẵn:\r\n<ul>\r\n<li>CPU: Intel i7-8700K 6C/12T, hiệu suất được ép xung tới 4.8 GHz trên tất cả các lõi</li>\r\n</li>GPU: Nvidia GTX 1060 , GTX 1070 , GTX 1080\r\nRAM: Tối đa 64 GB DDR4-2800</li>\r\n<li>Dung lượng lưu trữ: 1 x m.2 NVMe, 1 x 2.5-inch bay, 2 x 2.5/3.5-inch bays</li>\r\n<li>Cổng: Hai cổng sau hỗ trợ USB 3.1 ở tốc độ 10 Gbps. Đầu đọc thẻ SD tích hợp</li>\r\n<li>Khối lượng: 27 lít</li>\r\n<li>Nắp máy: Acrylic được sử dụng do độ bền cao trong quá trình vận chuyển</li>\r\n</ul>', '1515141552953.1.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `tendangnhap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `tendangnhap`, `matkhau`, `quyen`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`mactdh`) USING BTREE,
  ADD KEY `madh` (`madh`),
  ADD KEY `masanpham` (`masanpham`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madh`),
  ADD KEY `makh` (`makh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`mansx`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `mansx` (`mansx`),
  ADD KEY `maloai` (`maloai`);

--
-- Indexes for table `thongtindichvu`
--
ALTER TABLE `thongtindichvu`
  ADD PRIMARY KEY (`matt`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `mactdh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `maloai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `mansx` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `thongtindichvu`
--
ALTER TABLE `thongtindichvu`
  MODIFY `matt` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `ctdonhang_ibfk_1` FOREIGN KEY (`madh`) REFERENCES `donhang` (`madh`),
  ADD CONSTRAINT `ctdonhang_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masp`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`mansx`) REFERENCES `nhasanxuat` (`mansx`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

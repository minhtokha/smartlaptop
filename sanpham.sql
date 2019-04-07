-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 05:24 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `mansx` (`mansx`),
  ADD KEY `maloai` (`maloai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

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

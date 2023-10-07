/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `binh_luan` (
  `binh_luan_id` int NOT NULL AUTO_INCREMENT,
  `nguoi_dung_id` int DEFAULT NULL,
  `hinh_id` int DEFAULT NULL,
  `ngay_binh_luan` datetime DEFAULT NULL,
  `noi_dung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`binh_luan_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  KEY `hinh_id` (`hinh_id`),
  CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`),
  CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`hinh_id`) REFERENCES `hinh_anh` (`hinh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `hinh_anh` (
  `hinh_id` int NOT NULL AUTO_INCREMENT,
  `ten_hinh` varchar(255) DEFAULT NULL,
  `duong_dan` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `nguoi_dung_id` int DEFAULT NULL,
  PRIMARY KEY (`hinh_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  CONSTRAINT `hinh_anh_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `luu_anh` (
  `nguoi_dung_id` int NOT NULL,
  `hinh_id` int NOT NULL,
  `ngay_luu` datetime DEFAULT NULL,
  PRIMARY KEY (`nguoi_dung_id`,`hinh_id`),
  KEY `hinh_id` (`hinh_id`),
  CONSTRAINT `luu_anh_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`),
  CONSTRAINT `luu_anh_ibfk_2` FOREIGN KEY (`hinh_id`) REFERENCES `hinh_anh` (`hinh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `nguoi_dung` (
  `nguoi_dung_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `tuoi` int DEFAULT NULL,
  `anh_dai_dien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`) VALUES
(1, 1, 1, '2022-12-25 00:00:00', 'ảnh đẹp');
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`) VALUES
(2, 2, 1, '2023-09-27 11:00:00', 'Bình luận cho hình 1');
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`) VALUES
(3, 1, 2, '2023-09-27 12:00:00', 'Bình luận cho hình 2');
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`) VALUES
(4, 3, 3, '2023-09-27 14:00:00', 'Bình luận cho hình 3'),
(5, 4, 3, '2023-09-27 15:00:00', 'Bình luận cho hình 3'),
(6, 4, 4, '2023-09-27 16:00:00', 'Bình luận cho hình 4'),
(7, 1, 6, '2023-09-28 10:00:00', 'Bình luận cho hình 6'),
(8, 2, 7, '2023-09-28 11:00:00', 'Bình luận cho hình 7'),
(9, 3, 8, '2023-09-28 12:00:00', 'Bình luận cho hình 8'),
(10, 4, 9, '2023-09-28 13:00:00', 'Bình luận cho hình 9'),
(11, 5, 10, '2023-09-28 14:00:00', 'Bình luận cho hình 10'),
(12, 6, 6, '2023-09-28 15:00:00', 'Bình luận cho hình 6'),
(13, 7, 7, '2023-09-28 16:00:00', 'Bình luận cho hình 7'),
(14, 8, 8, '2023-09-28 17:00:00', 'Bình luận cho hình 8'),
(15, 9, 9, '2023-09-28 18:00:00', 'Bình luận cho hình 9'),
(16, 10, 10, '2023-09-28 19:00:00', 'Bình luận cho hình 10'),
(17, 1, 11, '2023-09-28 20:00:00', 'Bình luận cho hình 11'),
(18, 2, 12, '2023-09-28 21:00:00', 'Bình luận cho hình 12'),
(19, 3, 13, '2023-09-28 22:00:00', 'Bình luận cho hình 13'),
(20, 4, 14, '2023-09-28 23:00:00', 'Bình luận cho hình 14');

INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(1, 'Hình 1', 'https://picsum.photos/200/300', 'Mô tả hình 1', 1);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(2, 'Hình 2', 'https://picsum.photos/200/300', 'Mô tả hình 2', 2);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(3, 'Hình 3', 'https://picsum.photos/200/300', 'Mô tả hình 3', 3);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(4, 'Hình 4', 'https://picsum.photos/200/300', 'Mô tả hình 4', 4),
(5, 'Hình 5', 'https://picsum.photos/200/300', 'Mô tả hình 5', 5),
(6, 'Hình 6', 'https://picsum.photos/200/300', 'Mô tả hình 6', 6),
(7, 'Hình 7', 'https://picsum.photos/200/300', 'Mô tả hình 7', 7),
(8, 'Hình 8', 'https://picsum.photos/200/300', 'Mô tả hình 8', 8),
(9, 'Hình 9', 'https://picsum.photos/200/300', 'Mô tả hình 9', 9),
(10, 'Hình 10', 'https://picsum.photos/200/300', 'Mô tả hình 10', 10),
(11, 'Hình 11', 'https://picsum.photos/200/300', 'Mô tả hình 11', 1),
(12, 'Hình 12', 'https://picsum.photos/200/300', 'Mô tả hình 12', 2),
(13, 'Hình 13', 'https://picsum.photos/200/300', 'Mô tả hình 13', 3),
(14, 'Hình 14', 'https://picsum.photos/200/300', 'Mô tả hình 14', 4),
(15, 'Hình 15', 'https://picsum.photos/200/300', 'Mô tả hình 15', 5);

INSERT INTO `luu_anh` (`nguoi_dung_id`, `hinh_id`, `ngay_luu`) VALUES
(1, 4, '2023-09-27 14:30:00');
INSERT INTO `luu_anh` (`nguoi_dung_id`, `hinh_id`, `ngay_luu`) VALUES
(1, 6, '2023-09-28 10:30:00');
INSERT INTO `luu_anh` (`nguoi_dung_id`, `hinh_id`, `ngay_luu`) VALUES
(1, 11, '2023-09-28 20:30:00');
INSERT INTO `luu_anh` (`nguoi_dung_id`, `hinh_id`, `ngay_luu`) VALUES
(2, 2, '2023-09-27 11:30:00'),
(2, 5, '2023-09-27 15:30:00'),
(2, 7, '2023-09-28 11:30:00'),
(2, 12, '2023-09-28 21:30:00'),
(3, 8, '2023-09-28 12:30:00'),
(3, 13, '2023-09-28 22:30:00'),
(4, 9, '2023-09-28 13:30:00'),
(4, 14, '2023-09-28 23:30:00'),
(5, 10, '2023-09-28 14:30:00'),
(5, 15, '2023-09-29 00:30:00'),
(6, 6, '2023-09-28 15:30:00'),
(7, 7, '2023-09-28 16:30:00'),
(8, 8, '2023-09-28 17:30:00'),
(9, 9, '2023-09-28 18:30:00'),
(10, 10, '2023-09-28 19:30:00');

INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`) VALUES
(1, 'thanh@gmail.com', '123456', 'Dai Thanh', 19, '/public/images/avatar1.jpg');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`) VALUES
(2, 'phuc@example.com', 'matkhau2', 'Phúc Trần', 30, '/public/images/avatar2.jpg');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`) VALUES
(3, 'lam@example.com', 'matkhau3', 'Lâm Gia', 28, '/public/images/avatar3.jpg');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`) VALUES
(4, 'phu@example.com', 'matkhau4', 'Phú Đặng', 35, '/public/images/avatar4.jpg'),
(5, 'tony@example.com', 'matkhau5', 'Tony Tèo', 22, '/public/images/avatar5.jpg'),
(6, 'binh@example.com', 'matkhau6', 'Bình Nguyễn', 29, '/public/images/avatar6.jpg'),
(7, 'nhi@example.com', 'matkhau7', 'Nhi Trần', 33, '/public/images/avatar7.jpg'),
(8, 'trung@example.com', 'matkhau8', 'Trung Phạm', 26, '/public/images/avatar8.jpg'),
(9, 'nhat@example.com', 'matkhau9', 'Thanh Nhật', 27, '/public/images/avatar9.jpg'),
(10, 'sang@example.com', 'matkhau10', 'Sang Nguyễn', 31, '/public/images/avatar10.jpg'),
(11, 'tai@gmail.com', '123456', 'Tai Thanh', 27, NULL);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
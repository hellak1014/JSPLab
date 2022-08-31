-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.8.3-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 minhyuk20.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `mno` int(11) NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) DEFAULT NULL,
  `mpass` varchar(20) DEFAULT NULL,
  `memail` varchar(50) DEFAULT NULL,
  `mage` char(11) DEFAULT NULL,
  `mbd` varchar(50) DEFAULT NULL,
  `mtel` varchar(20) DEFAULT NULL,
  `mgender` varchar(50) DEFAULT NULL,
  `mlevel` varchar(11) DEFAULT '5',
  `mimage` longtext DEFAULT NULL,
  `mdate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`mno`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 minhyuk20.member:~7 rows (대략적) 내보내기
INSERT INTO `member` (`mno`, `mid`, `mpass`, `memail`, `mage`, `mbd`, `mtel`, `mgender`, `mlevel`, `mimage`, `mdate`) VALUES
	(1, 'test123123', '123', 'aaa@com', '20대', '2001.01.01', '01078795454', '여성', '5', 'dog6.jpg', '2022-08-29 01:09:45'),
	(5, 'test0000', '123', 'ddd@com', '30대', '1986.12.12', '01054548787', '남성', '5', 'pic7.jpg', '2022-08-29 01:28:39'),
	(6, 'test3', '123', 'ccc@com', '40대 이상', '1977.07.05', '01045457878', '여성', '5', 'pic5.jpg', '2022-08-29 01:29:24'),
	(7, 'test2', '123', 'kkk@com', '10대', '2013.09.29', '01078795454', '여성', '5', 'ham.jpg', '2022-08-29 01:30:11'),
	(13, 'test4', '123', 'GGG@com', '20대', '1994.12.12', '01054548786', '여성', '5', 'pic3.jpg', '2022-08-30 06:11:56'),
	(15, 'hella_k', '123', 'hella_k@daum.net', '20대', '1994.02.02', '01078795454', '여성', '5', 'dog6.jpg', '2022-08-30 08:34:05'),
	(16, '곽은영', '123', 'hella_k@daum.net', '20대', '1111.33.33', '01079797979', '여성', '5', 'ham.jpg', '2022-08-31 07:30:06');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

CREATE TABLE `member` (
	`mno` INT(11) NOT NULL AUTO_INCREMENT,
	`mname` VARCHAR(10) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mpass` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mtel` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`memail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mgender` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`maddr` VARCHAR(70) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mlevel` VARCHAR(50) NULL DEFAULT '5' COLLATE 'utf8mb4_general_ci',
	`mimage` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mdate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`mno`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=26
;


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

-- 테이블 데이터 webmarket.member:~19 rows (대략적) 내보내기
INSERT INTO `member` (`mno`, `mname`, `mpass`, `mtel`, `memail`, `mgender`, `maddr`, `mlevel`, `mimage`, `mdate`) VALUES
	(1, 'afs', NULL, '555', NULL, NULL, NULL, '5', '5', NULL),
	(2, 'sdfas', NULL, '3333', NULL, NULL, NULL, '5', '5', '2022-08-16 07:36:41'),
	(3, 'lldldld', NULL, '5557777888', NULL, NULL, NULL, '5', '5', '2022-08-16 07:38:00'),
	(4, '김길동', NULL, '7778888', NULL, NULL, NULL, '5', '5', '2022-08-16 07:40:02'),
	(5, 'key', NULL, '01087654321', NULL, NULL, NULL, '5', '5', '2022-08-17 02:53:34'),
	(6, 'key', NULL, '01087654321', NULL, NULL, NULL, '5', '5', '2022-08-17 03:12:28'),
	(7, '이수만', NULL, '01055555555', NULL, NULL, NULL, '5', '5', '2022-08-17 03:14:16'),
	(8, '김아니', NULL, '01012121212', NULL, NULL, NULL, '5', '5', '2022-08-17 03:19:32'),
	(9, '할리스', NULL, '01078787878', NULL, NULL, NULL, '5', '5', '2022-08-17 03:57:55'),
	(10, '김지비', NULL, '01045457878', NULL, NULL, NULL, '5', 'ham.jpg', '2022-08-19 02:07:13'),
	(14, '김지비', 'qwerty123', '01045457878', 'qwerty12@nnn.com', 'on', '서울특별시', '5', 'ham.jpg', '2022-08-22 04:01:38'),
	(15, '최지비', 'qwer123', '01078795454', 'eee.com', '남성', '서울특별시', '5', 'i13536645338.jpg', '2022-08-22 06:16:56'),
	(19, '지비', '123', '123', '123', '여성', '서울특별시 마포구 독막로6길 14', '5', 'pic3.jpg', '2022-08-23 08:19:42'),
	(20, '나지비', '123', '123', '123', '여성', '서울특별시 도봉구 도봉로 964-40 (도봉동 38-3번지)', '5', 'pic3.jpg', '2022-08-23 08:52:02'),
	(21, '이지비', '123', '01045459898', 'aaa@com', '여성', '서울특별시 중구 소공동 세종대로18길 2', '5', 'pic7.jpg', '2022-08-24 00:52:12'),
	(22, '정지비', '123', '01076454545', 'abc@com', '남성', '경기도 용인시 수지구 죽전로 152', '5', 'pic10.jpg', '2022-08-24 02:40:00'),
	(23, '김지비', '123', '01097976464', 'def@com', '여성', '경기도 양주시 옥정동 869', '5', 'pic3.jpg', '2022-08-24 02:41:05'),
	(24, '부지비', '123', '01061613131', 'aaa@com', '남성', '부산광역시 금정구 부산대학로63번길 2', '5', 'pic6.jpg', '2022-08-24 02:41:43'),
	(25, '모지비', '123', '01052525252', 'bbb@com', '남성', '전라북도 전주시 덕진구 동부대로 680', '5', 'dog6.jpg', '2022-08-24 02:42:58');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

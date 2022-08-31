CREATE TABLE `product` (
	`pid` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`pname` VARCHAR(10) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pdesc` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pprice` VARCHAR(10) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pimage1` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pimage2` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pimage3` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`pid`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
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

-- 테이블 데이터 webmarket.product:~16 rows (대략적) 내보내기
INSERT INTO `product` (`pid`, `pname`, `pdesc`, `pprice`, `pimage1`, `pimage2`, `pimage3`) VALUES
	('00000', NULL, '00000', '000000', 'etc', NULL, NULL),
	('00000000001', 'ì ìê¸°', 'ì ìê¸°ì ìê¸°', '300,000', 'etc', NULL, NULL),
	('000015', '기침약', '콜록콜록', '5,000', 'ham.jpg', NULL, NULL),
	('0000155', '기침약', '콜록콜록', '5,000', 'ham.jpg', NULL, NULL),
	('0000157', '녹차', 'ㅇㅇㅇ', '3,000,000', 'dog.jpg', 'ham.jpg', 'i13536645338.jpg'),
	('00001578', '제발', '<p>좀 되어라</p>', '999,000', 'dog.jpg', 'ham.jpg', 'i13536645338.jpg'),
	('00003', 'í¤ëì', 'ê° ì§±ë¹ì¼ í¤ëì', '500,000', 'etc', NULL, NULL),
	('000032', '녹차', '노오옥차아아아', '4,000', 'i13536645338.jpg', NULL, NULL),
	('00004', '지갑', '지갑', '1,000,000', 'etc', NULL, NULL),
	('00005', '지갑', '지가아압', '999,000', 'etc', NULL, NULL),
	('000099', '모니터', '<p>커브드 모니터</p>', '500,000', 'dog6.jpg', 'ham.jpg', 'pic4.jpg'),
	('00057', '녹차', '녹차', '300,000', 'dog.jpg', 'ham.jpg', 'i13536645338.jpg'),
	('0007544', '기침약', '기침약', '5555', 'ham.jpg', 'i13536645338.jpg', 'dog.jpg'),
	('0007854', '커피', '<p>아이스 라떼 헤이즐넛 시럽 3펌프 추가 벤티사이즈</p>', '5,800', 'pic3.jpg', 'pic6.jpg', 'pic2.jpg'),
	('789789', '배아파', '<p>배가 아파요</p>', '999,000', 'KakaoTalk_20220809_170247746.jpg', 'ham.jpg', 'dog.jpg'),
	('8787', '하이', '<p>하이</p>', '5,000', NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

CREATE TABLE `board` (
	`bid` INT(11) NOT NULL AUTO_INCREMENT,
	`btitle` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`bcont` VARCHAR(1000) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`bauthor` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`bdate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`bid`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=33
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

-- 테이블 데이터 webmarket.board:~6 rows (대략적) 내보내기
INSERT INTO `board` (`bid`, `btitle`, `bcont`, `bauthor`, `bdate`) VALUES
	(27, '집에 보내주세요', NULL, '김지비', '2022-08-23 06:44:18'),
	(28, '나도 집에 가고 싶어요', NULL, '김지비', '2022-08-23 06:50:34'),
	(29, '왜 안들어가는데', '<p>들어가들어가</p>', '김지비', '2022-08-23 06:56:13'),
	(30, '기억해', '<p><br></p><p>영천은 힐러2번 앞에 장판에서 징을 빼고</p><p>반시계에서 줄을 뺀뒤</p><p>다시 징을 뺀 곳에서 죽어라 딜을 해야해</p><p><br></p><p>알겟니?</p>', '김지비', '2022-08-23 07:08:01'),
	(31, '되라', '<p>좀 되라</p>', '지비', '2022-08-23 08:22:04'),
	(32, '진짜 되냐?', '<p>ㅇㅇ</p>', '지비', '2022-08-23 08:31:03');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

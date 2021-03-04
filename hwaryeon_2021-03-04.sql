# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.23)
# Database: hwaryeon
# Generation Time: 2021-03-04 09:45:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth`;

CREATE TABLE `auth` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `userpw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'now',
  `grade` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;

INSERT INTO `auth` (`id`, `userid`, `userpw`, `username`, `email`, `created`, `grade`)
VALUES
	(1,'ssssssss','$2b$07$d.PASmK8.IAfQH2ppcR6huO/d1DMpEb4mmBVIBKdQM0RFHzBup75e','임화련','ssss@ssss.com','2021-02-26 16:25:23',1),
	(2,'demouser','$2b$07$DsLxt6iFC.5/g35fpMWzu.hsshJ0d1EPrlwoa7rsO9G2gtcDzai3C','임화련','demo@demo.com','2021-02-26 16:26:53',1);

/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table board
# ------------------------------------------------------------

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `content` text,
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orifile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `savefile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `readnum` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `uid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `FK_board_auth` FOREIGN KEY (`uid`) REFERENCES `auth` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;

INSERT INTO `board` (`id`, `title`, `content`, `writer`, `created`, `orifile`, `savefile`, `readnum`, `uid`)
VALUES
	(1,'주린이가 가장 알고 싶은 최다질문 TOP 77','<div class=\"Ere_fs18 Ere_sub_gray3 Ere_str\" style=\"color: #333333; line-height: 1.6; letter-spacing: -0.02em; font-size: 18px; font-weight: 600; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; background-color: #ffffff;\">\"아직 주린이라는 마음가짐으로\"</div>\r\n<div class=\"Ere_space10\" style=\"margin: 0px; padding: 0px; height: 10px; color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\">&nbsp;</div>\r\n<p><span style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\">2020년을 2873.47로 마감했던 코스피지수가 불과 4거래일 만인 1월 7일, 3031.68을 기록하며 역사적인 3천 시대를 열었다. 2007년 7월, 2천선을 돌파한 이후 무려 14년 만의 일이다. 그 후 며칠이나 되었을까. 코스피가 3거래일 연속 하락하면서 조정 국면을 맞자 3천선이 위태하다는 기사가 마치 기다렸다는 듯 올라오고, 증시가 너무 과열됐다는 쪽과 이제 한창일 뿐이라는 쪽의 신경전은 더욱 날카로워졌다. 누구의 말이 맞는지 어느 장단에 맞춰야 하는지, 이제 막 시장에 참여해 주식을 배우는 중인 초보 투자자들은 혼란스러울 수밖에 없다.</span><br style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\" /><br style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\">이 책은 그 불안한 \'주린이\'들의 마음을 가라앉힐 진정제다. 주식투자 열풍이 낳은 또 한 명의 스타이자 \'염블리\'라 불리는 주린이들의 멘토, 염승환 저자가 자신의 첫 단독 저서의 독자층을 주식초보자로 설정한 것은 자못 의미심장한 일이다. 많은 저자들이 자신만의 투자 노하우를 뽐내기 바쁘고 독자들 역시 어떤 요령에 더욱 집중하지만, 이럴 때일수록 가장 중요한 것은 기본기이기 때문이다. 책에 담긴 77개의 기본기를 대부분 안다고 방심하진 말자. 하루하루 주가변동성에 휘둘리는 우리는 아직, 이 책을 곱씹어야 할 주린이인지도 모른다.</span></p>\r\n<div class=\"Ere_sub_blue Ere_textR Ere_PT10\" style=\"text-align: right; color: #0086cd; line-height: 1.5; padding-top: 10px; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\">- 경영 MD 홍성원 (2021.01.19)</div>','염승환','2021-02-26 16:32:27','','',0000000001,2),
	(2,'2030 축의 전환 - 새로운 부와 힘을 탄생시킬 8가지 거대한 물결','<p><span style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\">4차 산업혁명 다음 혁명은 어느 나라가 주도할까? 출생률 감소와 인구 고령화는 코로나19와 맞물려 어떤 양상으로 진행될까? 디지털 시대에 태어난 밀레니얼 세대와 세계에서 가장 큰 소비자 집단인 실버 세대 사이에는 어떤 기회가 숨겨져 있을까? 규모와 수가 빠르게 늘고 있는 도시들은 기후변화와 양극화를 어떻게 극복할 수 있을까?</span><br style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\" /><br style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\">이 책은 현재 진행 중인 주요 추세들이 &lsquo;2030년&rsquo;에 수렴하면, 지금과는 완전히 다른 세상이 펼쳐질 것이라 전망한다. 그때가 오면 세계의 중심은 대서양에서 아시아와 아프리카로, 젊은 세대에서 나이 든 세대로, 남성에서 여성으로 이동하고, 새로운 과학기술이 소비나 화폐에 대한 기존의 개념을 뒤바꿀 것이다.</span><br style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\" /><br style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: malgun, \'Malgun Gothic\', Dotum, 돋움, sans-serif; font-size: 15px; letter-spacing: -0.3px; background-color: #ffffff;\">세계적인 경영 석학이 경제학, 지정학, 사회학을 넘나들며 변화의 양상을 날카롭게 통찰하는 이 책은 새로운 시작과 함께할 수많은 위험과 기회들을 보여주고 위기와 혼란을 헤쳐 나가기 위한 전략을 제시한다.</span></p>','마우로 F. 기옌','2021-02-26 16:43:56','','',0000000001,2);

/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table board_ip
# ------------------------------------------------------------

DROP TABLE IF EXISTS `board_ip`;

CREATE TABLE `board_ip` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `bid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  CONSTRAINT `FK_board` FOREIGN KEY (`bid`) REFERENCES `board` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `board_ip` WRITE;
/*!40000 ALTER TABLE `board_ip` DISABLE KEYS */;

INSERT INTO `board_ip` (`id`, `ip`, `bid`)
VALUES
	(1,'::1',1),
	(2,'::1',1),
	(3,'::1',2),
	(4,'::1',1);

/*!40000 ALTER TABLE `board_ip` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '번호',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '책제목',
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '저자',
  `wdate` datetime NOT NULL COMMENT '등록일(저장시점)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`id`, `title`, `writer`, `wdate`)
VALUES
	(7,'주식','주린이','2021-01-25 16:46:58'),
	(8,'임화련','임화련','2021-01-25 16:48:15'),
	(9,'dd','dd','2021-01-25 16:50:51'),
	(10,'s','s','2021-01-25 16:52:04'),
	(11,'dd','dd','2021-01-25 21:41:13');

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '순번',
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '도시명',
  `country` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '국가명',
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '도시설명',
  `lat` float unsigned DEFAULT NULL COMMENT '위도',
  `lon` float unsigned DEFAULT NULL COMMENT '경도',
  `population` int unsigned DEFAULT NULL COMMENT '인구수',
  `sdate` datetime DEFAULT NULL COMMENT '도시설립일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;

INSERT INTO `city` (`id`, `name`, `country`, `summary`, `lat`, `lon`, `population`, `sdate`)
VALUES
	(1,'Seaul','Korea','한국의 수도',38.5,127.5,40000000,'1000-01-01 00:00:00'),
	(2,'Pusan','Korea','한국의 제2의 도시-도로가 좁다. 동백섬도 좋다.',34.87,128.73,2923012,'1200-01-01 00:00:00');

/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `content` text,
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `readnum` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `uid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `auth` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;

INSERT INTO `gallery` (`id`, `title`, `content`, `writer`, `created`, `readnum`, `uid`)
VALUES
	(7,'#daily','','임뭉','2021-02-26 17:31:06',0000000000,2),
	(8,'(,,>᎑<,,)','','임뭉','2021-02-26 17:33:04',0000000000,2);

/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gallery_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery_file`;

CREATE TABLE `gallery_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `orifile` varchar(255) NOT NULL DEFAULT '',
  `savefile` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fid` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gallery_file_gallery` (`fid`),
  CONSTRAINT `FK_gallery_file_gallery` FOREIGN KEY (`fid`) REFERENCES `gallery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `gallery_file` WRITE;
/*!40000 ALTER TABLE `gallery_file` DISABLE KEYS */;

INSERT INTO `gallery_file` (`id`, `orifile`, `savefile`, `created`, `fid`)
VALUES
	(5,'moong-1.png','210226_17-80e35e22-425a-4c87-906c-25bd7ce38a48.png','2021-02-26 17:31:06',7),
	(6,'moong-5.png','210226_17-34995ec2-e30a-4e10-b2c2-d19e5bcb9f27.png','2021-02-26 17:31:06',7),
	(7,'moong-4.png','210226_17-daa7b7ba-fd50-4bc2-8fde-834db953503c.png','2021-02-26 17:33:04',8);

/*!40000 ALTER TABLE `gallery_file` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gallery_ip
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery_ip`;

CREATE TABLE `gallery_ip` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `bid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  CONSTRAINT `FK_gallery_ip_gallery` FOREIGN KEY (`bid`) REFERENCES `gallery` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`session_id`, `expires`, `data`)
VALUES
	(X'6538306F39566F7075636148746F7A6750696C30524C3838783059394B5F704D',1614905018,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D');

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DROP DATABASE IF EXISTS test;

CREATE DATABASE test;

USE test;

CREATE TABLE `User` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(25) NOT NULL,
	`age` INT NOT NULL,
	`isAdmin` BIT(1) NOT NULL,
	`createdDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci';

INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (1,"Donna",34,0,"2015-06-06 13:26:41");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (2,"Laura",25,1,"2017-04-29 11:16:09");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (3,"Blake",34,0,"2015-06-15 00:17:54");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (4,"Dustin",53,1,"2016-04-29 08:49:40");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (5,"Callum",28,1,"2016-01-26 08:46:29");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (6,"Dacey",32,0,"2017-03-20 04:22:25");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (7,"Emily",39,1,"2015-08-20 03:02:51");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (8,"Denise",36,1,"2017-01-15 02:38:19");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (9,"Armand",27,0,"2015-09-03 11:48:41");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (10,"Dylan",25,0,"2016-05-12 05:59:08");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (11,"Marshall",43,1,"2017-02-05 00:12:16");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (12,"Carly",29,1,"2016-03-13 05:43:29");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (13,"Kylan",25,1,"2016-02-04 00:21:18");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (14,"Hilary",32,0,"2017-03-13 12:17:53");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (15,"Angela",29,1,"2015-09-03 10:46:11");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (16,"Bianca",43,0,"2016-10-19 14:00:45");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (17,"Haley",52,0,"2016-08-19 21:50:12");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (18,"Madonna",23,1,"2017-03-21 02:48:18");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (19,"Erin",32,1,"2017-02-16 00:35:50");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (20,"September",46,0,"2016-10-10 13:06:36");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (21,"McKenzie",34,1,"2016-11-30 12:34:09");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (22,"John",55,0,"2017-05-18 18:50:01");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (23,"Athena",56,1,"2016-02-03 19:25:28");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (24,"Minerva",43,1,"2017-04-28 18:22:24");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (25,"Jonah",57,1,"2015-10-16 15:26:55");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (26,"Kermit",26,1,"2016-08-01 03:16:06");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (27,"Kennan",31,0,"2016-01-02 22:43:25");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (28,"Wayne",23,0,"2016-02-15 23:46:16");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (29,"Zephr",32,1,"2015-07-08 07:48:34");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (30,"Wing",40,0,"2016-12-26 07:01:38");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (31,"Mollie",34,1,"2015-06-22 16:34:17");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (32,"Abdul",38,0,"2015-05-21 04:08:39");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (33,"Sara",38,1,"2015-07-06 18:12:57");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (34,"Nash",25,0,"2016-09-18 04:48:00");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (35,"Kareem",27,1,"2016-05-29 05:12:15");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (36,"Kaden",51,0,"2016-07-27 17:39:25");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (37,"Thomas",24,1,"2016-04-16 02:34:50");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (38,"Linda",53,1,"2015-08-12 12:36:07");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (39,"Christopher",33,0,"2017-01-13 16:04:53");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (40,"Fredericka",57,1,"2015-11-25 00:17:24");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (41,"Ifeoma",40,0,"2017-05-04 15:07:07");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (42,"Solomon",59,0,"2016-01-20 09:12:17");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (43,"Octavia",44,1,"2016-04-18 21:18:42");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (44,"Pamela",55,1,"2015-09-01 18:26:38");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (45,"Haviva",43,0,"2016-05-25 15:02:56");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (46,"Noelle",46,1,"2015-07-09 19:06:15");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (47,"Jordan",42,1,"2016-09-19 16:38:26");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (48,"Brody",58,1,"2016-08-17 13:40:15");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (49,"Hedy",40,0,"2016-11-02 13:45:49");
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (50,"Wyatt",50,1,"2017-03-26 17:31:42");

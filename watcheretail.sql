/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 8.0.32 : Database - watcheretail
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`watcheretail` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `watcheretail`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(350) NOT NULL,
  `thumbnail` varchar(350) NOT NULL,
  `subcategory_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`category_id`,`name`,`description`,`image`,`thumbnail`,`subcategory_id`,`created_at`,`modified_at`,`status`) values 
(1,'watches','test test test','watches/test.img','watches/test_thumb.img',5,'2023-01-30 23:45:21','2023-01-30 23:45:21',1);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(350) NOT NULL,
  `description` text NOT NULL,
  `category_id` int NOT NULL,
  `SKU` varchar(150) NOT NULL,
  `mrp` decimal(10,0) NOT NULL,
  `image` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`id`,`title`,`description`,`category_id`,`SKU`,`mrp`,`image`,`created_at`,`updated_at`,`status`) values 
(1,'Fire-Boltt Ninja Pro Max Smartwatch  (Pink Gold Strap, Free Size)','Fire-Boltt Spin has the Industry?s Largest Square Display of 1.6\" Full Touch and HD TFT Screen. This watch is your ALL IN ONE companion with Spo2, HR, steps, calorie, sleep monitoring and counting features. Keep a close track and watch on the Blood Oxygen Levels (SpO2) as well as Continuous Heart Rate Tracking. This Fireboltt Ninja Pro Max is a show stopper and has 27 well known sports modes. This watch can sustain a battery backup of up to 8 days where you need not worry to charge!',1,'SKU123',1499,'watch_firebolt.jpeg','2023-01-30 18:18:14','2023-01-30 18:18:14',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(500) NOT NULL,
  `password_salt` varchar(500) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`full_name`,`user_id`,`email`,`password`,`password_salt`,`otp`) values 
(1,'Frodo Baggains','frodo','frodo@testmail.com','NmVlNzRjZTE4ZDVjMWQ1NTY0ZmJhNDhlYjkxMzkzZTI3N2Q4NjhmZmY2MWJmZmJlNjZkYzZhNmIwYWRkNDNiYmExNTFiYjE2OGI2ZDg2ZTYwN2Q4MGQzOTUwZGMwZjcyN2RiZTIzMDQxNThiYTYwYzIwNmE0YTFlMzE0YWY4OGMzNzM3MzYzNTM4MzczNjM4MzczNzM2Mzc2YTY4NjczNzM2MzUzNzM2MzUzNzM2MzU2NzYzNzQ3OTc1NzQ3NTc5NzQ=','776587687767jhg765765765gctyutuyt',''),
(2,'siku','bhisma@test.com','bhisma@test.com','$2a$10$jb8KeViJmT0qB2HZTRgOU.fjRENMJj/OE2ObjV8mY6zPhXCIxchY6','$2a$10$jb8KeViJmT0qB2HZTRgOU.fjRENMJj/OE2ObjV8mY6zPhXCIxchY6',NULL),
(3,'sIKHNI','test@test.com','test@test.com','$2a$10$5oPJlRT40xXnOMUkXGu7uOKep.UsBw9HirL6Hazp9Ozw/Bt4a4PRS','$2a$10$5oPJlRT40xXnOMUkXGu7uOKep.UsBw9HirL6Hazp9Ozw/Bt4a4PRS',NULL),
(4,'papun','paun@test.com','paun@test.com','$2a$10$jjuaou9zC6Rp8L3MYstZaOpG2V4tqFuAE0d9vdVer6sxvnEpx05e.','$2a$10$jjuaou9zC6Rp8L3MYstZaOpG2V4tqFuAE0d9vdVer6sxvnEpx05e.',NULL),
(5,'Bhisma','puthalpapun@gmail.com','puthalpapun@gmail.com','$2a$10$FOLIbRm43XC3SvkIZCyY0OgsrrfKmhP.xZWZrFP6gv8D4EKDuqyGG','$2a$10$FOLIbRm43XC3SvkIZCyY0OgsrrfKmhP.xZWZrFP6gv8D4EKDuqyGG',NULL),
(6,'siku','bhisma@test1.com','bhisma@test1.com','$2a$10$w9NO6v2lrXtqEhmJzNjU8.Yc6cjSWwiv1mxjJmmmgpCztp70q3Loi','$2a$10$w9NO6v2lrXtqEhmJzNjU8.Yc6cjSWwiv1mxjJmmmgpCztp70q3Loi',NULL),
(7,'Sikun1','sikun123@gmail.com','sikun123@gmail.com','$2a$10$EbYWs3uGtz2qvsLpapyMqeDx7hwl3OMYQrvEVNSkxYOn9gYfEbWXG','$2a$10$EbYWs3uGtz2qvsLpapyMqeDx7hwl3OMYQrvEVNSkxYOn9gYfEbWXG',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

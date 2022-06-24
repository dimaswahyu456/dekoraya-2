/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.4.21-MariaDB : Database - dekoraya
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `dekoraya`;

/*Table structure for table `is_about` */

DROP TABLE IF EXISTS `is_about`;

CREATE TABLE `is_about` (
  `about_id` int(1) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `is_about` */

insert  into `is_about`(`about_id`,`title`,`content`) values (1,'','<p><span style=\"font-size:18px\"><strong>Apa Itu Dekoraya Wedding Organizer ?</strong></span></p>\r\n\r\n<p><span style=\"font-family:courier new,courier,monospace\"><span style=\"font-size:16px\"><strong>Dekoraya Wedding Organizer&nbsp;</strong><span style=\"color:rgb(102, 102, 102)\">suatu perusahaan di bidang jasa khusus secara pribadi membantu calon pengantin dan keluarga mempelai dalam perencanaan dan supervisi pelaksanaan rangkaian acara pesta pernikahan sesuai jadwal yang diinginkan.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Visi &amp; Misi Dekoraya Wedding Organizer</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Visi :&nbsp;</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-family:courier new,courier,monospace\"><span style=\"font-size:16px\">Menjadi Perusahaan wedding organizer yang menjadi pilihan bagi para calon pengantin dan menjadi trendsetter bagi para MUA</span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong><span style=\"font-size:18px\">Misi :</span></strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-family:courier new,courier,monospace\"><span style=\"font-size:16px\">Memberikan pelayanan dengan kualitas dan hasil terbaik untuk kepuasan pelanggan</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:courier new,courier,monospace\"><span style=\"font-size:16px\">Mengembangkan produk dan jasa layanan yang inovatif untuk meningkatkan kepuasan pelanggan</span></span></p>\r\n	</li>\r\n</ul>');

/*Table structure for table `is_message` */

DROP TABLE IF EXISTS `is_message`;

CREATE TABLE `is_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `status` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `is_message` */

insert  into `is_message`(`message_id`,`date`,`name`,`email`,`message`,`status`) values (1,'2022-06-23 21:03:43','Danang Kesuma','danang.kesuma@gmail.com','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias?','y'),(2,'2022-06-23 21:03:40','dimas','dimaswahyu456@gmail.com','hi','y'),(3,'2022-06-23 21:03:36','tes','sdaadsa@gmail.com','sdasada','y');

/*Table structure for table `is_portfolio` */

DROP TABLE IF EXISTS `is_portfolio`;

CREATE TABLE `is_portfolio` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `is_portfolio` */

insert  into `is_portfolio`(`portfolio_id`,`title`,`image`) values (1,'Lorem ipsum dolor sit amet consectetur adipisicing elit','1.jpg'),(2,'Quae repudiandae fugiat illo cupiditate','2.jpg'),(3,'Natus quibusdam recusandae illum','3.jpg'),(4,'Illo itaque ipsum sit harum','4.jpg'),(5,'At quia quaerat asperiores','5.jpg'),(6,'Cupiditate excepturi esse officiis consectetur','6.jpg'),(7,'accusantium expedita debitis impedit rerum totam','7.jpg'),(8,'Lorem ipsum dolor sit amet','8.jpg'),(9,'Voluptas eum incidunt dolores magni itaque autem','9.jpg');

/*Table structure for table `is_service` */

DROP TABLE IF EXISTS `is_service`;

CREATE TABLE `is_service` (
  `service_id` int(1) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `is_service` */

insert  into `is_service`(`service_id`,`title`,`content`) values (1,'Our Services','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod</p>\r\n\r\n<ul>\r\n	<li><strong>Web Design,</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Web Development, </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Mobile Apps, </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Desktop Application, </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Course and Training</strong><strong>,&nbsp;</strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Photography</strong><strong>,&nbsp;</strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod</li>\r\n</ul>');

/*Table structure for table `is_user` */

DROP TABLE IF EXISTS `is_user`;

CREATE TABLE `is_user` (
  `user_id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `is_user` */

insert  into `is_user`(`user_id`,`username`,`password`,`fullname`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','Administrator');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

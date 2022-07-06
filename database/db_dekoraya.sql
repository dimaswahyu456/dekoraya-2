/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.4.21-MariaDB : Database - db_dekoraya
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `db_dekoraya`;

/*Table structure for table `tbl_admin` */

DROP TABLE IF EXISTS `tbl_admin`;

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `foto` text NOT NULL,
  `tentang` text NOT NULL,
  `level` enum('admin') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin` */

insert  into `tbl_admin`(`id_admin`,`username`,`password`,`nama_lengkap`,`alamat`,`no_hp`,`foto`,`tentang`,`level`) values (1,'admin','c4ca4238a0b923820dcc509a6f75849b','aw','sdfdsgdsg','09808','foto-lastgooglenews-facebookdeepweb2.jpeg','bjdnfglkdsnfg','admin');

/*Table structure for table `tbl_app` */

DROP TABLE IF EXISTS `tbl_app`;

CREATE TABLE `tbl_app` (
  `id_app` int(10) NOT NULL,
  `gambar` text DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `developer` varchar(100) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `view` int(100) DEFAULT NULL,
  `tgl_app` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_app` */

insert  into `tbl_app`(`id_app`,`gambar`,`judul`,`url`,`developer`,`ket`,`view`,`tgl_app`) values (2,'img/app/1.png','Web Profile','https://www.facebook.com/','Anwar-kun','Waw',10,'28-09-2017'),(3,'img/app/fb2016.png','slkdfnklds sdl ndsf pasdf ndsfg lasgf sal jskdhfjsldfnbld lsdngs dnk sdngd skgndskgdsnkk','https://www.youtube.com/','Ankun','sldfdsf',2,'28-09-2017');

/*Table structure for table `tbl_artikel` */

DROP TABLE IF EXISTS `tbl_artikel`;

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `view` int(100) DEFAULT NULL,
  `tgl_artikel` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_artikel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_artikel` */

/*Table structure for table `tbl_barang` */

DROP TABLE IF EXISTS `tbl_barang`;

CREATE TABLE `tbl_barang` (
  `id_barang` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kain` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `ukuran` varchar(30) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ket` text NOT NULL,
  `gambar` text NOT NULL,
  `view` varchar(20) NOT NULL,
  `tgl_barang` varchar(12) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_barang` */

insert  into `tbl_barang`(`id_barang`,`nama_kain`,`harga`,`ukuran`,`jenis`,`ket`,`gambar`,`view`,`tgl_barang`) values (1,'kbxgjdsx','12000','L','Barang Keluar','sdfdx','img/barang/1.png','16','');

/*Table structure for table `tbl_kontak` */

DROP TABLE IF EXISTS `tbl_kontak`;

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `tgl_kontak` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kontak` */

/*Table structure for table `tbl_web` */

DROP TABLE IF EXISTS `tbl_web`;

CREATE TABLE `tbl_web` (
  `id_web` int(10) NOT NULL AUTO_INCREMENT,
  `nama_web` varchar(100) DEFAULT NULL,
  `telp` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `fb` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `embed_lokasi` text DEFAULT NULL,
  PRIMARY KEY (`id_web`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_web` */

insert  into `tbl_web`(`id_web`,`nama_web`,`telp`,`instagram`,`whatsapp`,`fb`,`email`,`alamat`,`embed_lokasi`) values (1,'Dekoraya','082245263340','https://www.instagram.com/dekorayasby/','https://api.whatsapp.com/send/?phone=6282245263340&text&app_absent=0','https://www.facebook.com/dekoraya.sby','email@ordodev.com','pakal, Surabaya','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.2309938548005!2d103.59047141400866!3d-1.6162502365291318!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e25888bda00f9a9%3A0xf31d2243e1bce25c!2sSTMIK+NH+JAMBI!5e0!3m2!1sen!2sid!4v1492084244131');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

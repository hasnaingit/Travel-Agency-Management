-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema travel
--

CREATE DATABASE IF NOT EXISTS travel;
USE travel;

--
-- Definition of table `air`
--

DROP TABLE IF EXISTS `air`;
CREATE TABLE `air` (
  `airid` int(10) unsigned NOT NULL auto_increment,
  `airname` varchar(45) NOT NULL,
  `fromstation` varchar(45) NOT NULL,
  `tostation` varchar(45) NOT NULL,
  `seat` varchar(45) NOT NULL,
  `startdate` date NOT NULL,
  `arivedate` date NOT NULL,
  `picurl` varchar(45) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`airid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `air`
--

/*!40000 ALTER TABLE `air` DISABLE KEYS */;
INSERT INTO `air` (`airid`,`airname`,`fromstation`,`tostation`,`seat`,`startdate`,`arivedate`,`picurl`,`price`,`status`) VALUES 
 (801,'US BANGLA','DHAKA','DUBAI','30','2019-05-25','2019-05-27','XXXXX',12300,'Available'),
 (803,'sssssssss','adfdf','dfdf','56','2019-05-02','2019-05-03','ssss',2365,'aaa'),
 (804,'xxxx','xxxx','xxxx','55','2019-05-01','2019-05-02','xxxx',2525,'xxxx');
/*!40000 ALTER TABLE `air` ENABLE KEYS */;


--
-- Definition of table `airbooking`
--

DROP TABLE IF EXISTS `airbooking`;
CREATE TABLE `airbooking` (
  `airbookingid` int(10) unsigned NOT NULL auto_increment,
  `airid` int(10) unsigned NOT NULL,
  `custid` int(10) unsigned NOT NULL,
  `numofadult` int(10) unsigned NOT NULL,
  `numofchild` int(10) unsigned NOT NULL,
  `passportno` varchar(45) NOT NULL,
  `bookingdate` date NOT NULL,
  `totalprice` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`airbookingid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airbooking`
--

/*!40000 ALTER TABLE `airbooking` DISABLE KEYS */;
INSERT INTO `airbooking` (`airbookingid`,`airid`,`custid`,`numofadult`,`numofchild`,`passportno`,`bookingdate`,`totalprice`) VALUES 
 (1,801,604,2,1,'Bd-98654785','2019-06-24',150000);
/*!40000 ALTER TABLE `airbooking` ENABLE KEYS */;


--
-- Definition of table `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE `bus` (
  `busid` int(10) unsigned NOT NULL auto_increment,
  `busname` varchar(45) NOT NULL,
  `startplace` varchar(45) NOT NULL,
  `endplace` varchar(45) NOT NULL,
  `fare` varchar(45) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY  (`busid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` (`busid`,`busname`,`startplace`,`endplace`,`fare`,`status`) VALUES 
 (115,'GreenLine','Dhaka','Chittagong','5000','avilable . for awesome journey'),
 (116,'Toyota','Dhaka','Chittagong','5000','available'),
 (117,'Jeep','Dhaka','Cumilla','7000','available'),
 (118,'Pajero','Dhaka','shylhet','9000','available'),
 (119,'Noah','Dhaka','Saver','3000','available'),
 (120,'BMW','Dhaka','Tangail','5000','available');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;


--
-- Definition of table `busbooking`
--

DROP TABLE IF EXISTS `busbooking`;
CREATE TABLE `busbooking` (
  `busbookingid` int(10) unsigned NOT NULL auto_increment,
  `busid` int(10) unsigned NOT NULL,
  `custid` varchar(50) NOT NULL,
  `bookingdate` date NOT NULL,
  `status` varchar(200) NOT NULL,
  `payment` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  PRIMARY KEY  (`busbookingid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busbooking`
--

/*!40000 ALTER TABLE `busbooking` DISABLE KEYS */;
INSERT INTO `busbooking` (`busbookingid`,`busid`,`custid`,`bookingdate`,`status`,`payment`,`email`) VALUES 
 (3,109,'601','2019-01-21','available','no','hasan@gmail.com'),
 (501,109,'601','2018-12-12','available','no','jhon@gmail.com'),
 (502,321,'22','2019-07-01','i want a full new car',NULL,'user@gmail.com'),
 (503,117,'NewUser','2018-07-02','no comment',NULL,'user@gmail.com'),
 (504,115,'NewUser','2019-07-10','no comment',NULL,'user@gmail.com'),
 (505,120,'Michel','2019-06-22','available',NULL,'michel@gmail.com');
/*!40000 ALTER TABLE `busbooking` ENABLE KEYS */;


--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `custid` int(10) unsigned NOT NULL auto_increment,
  `custname` varchar(45) NOT NULL,
  `custaddress` varchar(45) NOT NULL,
  `custphone` varchar(45) NOT NULL,
  `custgender` varchar(45) NOT NULL,
  `custemailid` varchar(45) NOT NULL,
  PRIMARY KEY  (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`custid`,`custname`,`custaddress`,`custphone`,`custgender`,`custemailid`) VALUES 
 (601,'Michel','Dhaka','+880194563355','male','user@gmail.com'),
 (603,'rony','Borishal','01965845','male','rony@gmail.com'),
 (604,'Nora','England','0986598','female','nora@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE `expense` (
  `exid` int(10) unsigned NOT NULL auto_increment,
  `extype` varchar(45) NOT NULL,
  `packex` int(10) unsigned NOT NULL,
  `airex` int(10) unsigned NOT NULL,
  `busex` int(10) unsigned NOT NULL,
  `hotelex` int(10) unsigned NOT NULL,
  `otherex` int(10) unsigned NOT NULL,
  `month` varchar(45) NOT NULL,
  `totalex` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`exid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedbackid` int(10) unsigned NOT NULL auto_increment,
  `custid` int(10) unsigned NOT NULL,
  `comment` varchar(200) NOT NULL,
  `feedbackdate` date NOT NULL,
  `feedbackfor` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`feedbackid`,`custid`,`comment`,`feedbackdate`,`feedbackfor`) VALUES 
 (1,604,'your advanturer toure package was awesome . i enjoyed it for this vaccation . best of luck . hope to enjoy more packaes from this travel agency.','2019-06-24','Hotel booking'),
 (2,601,'your advanturer toure package was awesome . ','2019-06-24','bus booking'),
 (3,601,'best of luck . hope to enjoy more packaes from this travel agency.','2019-07-02','package');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `hotelid` int(10) unsigned NOT NULL auto_increment,
  `hotelname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `roomno` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`hotelid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` (`hotelid`,`hotelname`,`location`,`description`,`roomno`,`price`) VALUES 
 (701,'Sheraton','shahbag , Dhaka','International ',3,15000),
 (702,'Hotel-71','kakrail, Dhaka','awesome place to stay',301,300),
 (703,'Panfacific','Dhaka','its a 5 star hotel',9,6000),
 (704,'Hotel Redison','Dhaka','its a 4 star hotel',7,6000),
 (706,'Hotel Westine','Dhaka','awesome place to stay',9,8000);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;


--
-- Definition of table `hotelbooking`
--

DROP TABLE IF EXISTS `hotelbooking`;
CREATE TABLE `hotelbooking` (
  `hotelbookingid` int(10) unsigned NOT NULL auto_increment,
  `hotelid` int(10) unsigned NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `adultnum` int(10) unsigned default NULL,
  `childnum` int(10) unsigned default NULL,
  `totaldays` int(10) unsigned default NULL,
  `bookingdate` date default NULL,
  `email` varchar(45) NOT NULL,
  `totalcost` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`hotelbookingid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelbooking`
--

/*!40000 ALTER TABLE `hotelbooking` DISABLE KEYS */;
INSERT INTO `hotelbooking` (`hotelbookingid`,`hotelid`,`startdate`,`enddate`,`adultnum`,`childnum`,`totaldays`,`bookingdate`,`email`,`totalcost`) VALUES 
 (1,701,'2019-06-25','2019-06-27',2,1,2,'2019-06-22','michel@gmail.com',11000),
 (2,702,'2019-06-25','2019-06-26',3,1,2,'2019-07-02','user@gmail.com',12000);
/*!40000 ALTER TABLE `hotelbooking` ENABLE KEYS */;


--
-- Definition of table `packagebooking`
--

DROP TABLE IF EXISTS `packagebooking`;
CREATE TABLE `packagebooking` (
  `packbookingid` int(10) unsigned NOT NULL auto_increment,
  `packid` int(10) unsigned NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `bookingdate` date NOT NULL,
  `bookingstatus` varchar(45) default NULL,
  PRIMARY KEY  (`packbookingid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packagebooking`
--

/*!40000 ALTER TABLE `packagebooking` DISABLE KEYS */;
INSERT INTO `packagebooking` (`packbookingid`,`packid`,`emailid`,`bookingdate`,`bookingstatus`) VALUES 
 (1,2,'admin@gmail.com','2019-06-22','aaaa'),
 (2,3,'user@gmail.com','2019-06-29','Just enjoy'),
 (3,4,'user@gmail.com','2019-06-29','no request'),
 (4,5,'user@gmail.com','2019-06-30','yes i have a request'),
 (5,6,'user@gmail.com','2019-06-26','Nothing'),
 (6,7,'user@gmail.com','2019-06-29','nooo'),
 (7,4,'user@gmail.com','2019-06-29','i should enjoy'),
 (8,2,'user@gmail.com','2019-06-29','wish a enjoyable journey'),
 (9,2,'user@gmail.com','2019-07-01','no request'),
 (10,5,'user@gmail.com','2019-06-26','op[op['),
 (11,3,'user@gmail.com','2019-06-27','nb'),
 (12,3,'user@gmail.com','2019-06-30','i want a single room always'),
 (13,3,'user@gmail.com','2019-06-30','i want a single room always'),
 (14,4,'rasel@gmail.com','2019-06-27','Just enjoy'),
 (15,4,'rasel@gmail.com','2019-06-26','nooo'),
 (16,2,'rasel@gmail.com','2019-07-02','no request'),
 (17,3,'user@gmail.com','2019-06-24','Nothing'),
 (18,3,'user@gmail.com','2019-06-22','yes i have a request'),
 (19,3,'user@gmail.com','2019-07-02','no request'),
 (20,3,'michel@gmail.com','2019-06-22','no request'),
 (21,3,'michel@gmail.com','2019-06-22','no request'),
 (22,3,'user@gmail.com','2019-07-09','no comment');
/*!40000 ALTER TABLE `packagebooking` ENABLE KEYS */;


--
-- Definition of table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages` (
  `packid` int(10) unsigned NOT NULL auto_increment,
  `packcatid` int(10) unsigned NOT NULL,
  `location` varchar(45) NOT NULL,
  `daynum` int(10) unsigned NOT NULL,
  `nightnum` int(10) unsigned NOT NULL,
  `adultnum` int(10) unsigned NOT NULL,
  `childnum` int(10) unsigned NOT NULL,
  `accdncost` int(10) unsigned NOT NULL,
  `buscost` int(10) unsigned NOT NULL,
  `aircost` int(10) unsigned NOT NULL,
  `guidecost` int(10) unsigned NOT NULL,
  `depdate` date NOT NULL,
  `returndate` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `description` varchar(400) NOT NULL,
  `totalcost` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`packid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` (`packid`,`packcatid`,`location`,`daynum`,`nightnum`,`adultnum`,`childnum`,`accdncost`,`buscost`,`aircost`,`guidecost`,`depdate`,`returndate`,`status`,`description`,`totalcost`) VALUES 
 (2,2,'SundorBan',5,4,3,2,5000,2500,0,2500,'2019-06-20','2019-06-25','available','awesome place to enjoy holidays',10000),
 (3,2,'Saint-Martine',3,2,2,0,5000,2000,0,1000,'2019-07-10','2019-07-13','available','interesting Scenario of natural view to enjoy a short holidays',9000),
 (4,1,'Kuakata',3,2,2,1,3000,1500,0,500,'2019-07-05','2019-07-08','available','Amaging place in the east sight of Bangladesh. where you can observe the sunset and sunrise ',6000),
 (5,2,'BandarBan',5,4,3,1,5000,2000,0,1000,'2019-07-10','2019-07-15','available','awesome place to enjoy holidays',8000),
 (6,2,'Shylhet',3,2,2,1,3000,2000,0,100,'2019-07-20','2019-07-23','available','awesome place to stay',5000);
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;


--
-- Definition of table `packcategory`
--

DROP TABLE IF EXISTS `packcategory`;
CREATE TABLE `packcategory` (
  `packcatid` int(10) unsigned NOT NULL auto_increment,
  `packtitle` varchar(45) NOT NULL,
  `packdetails` varchar(45) NOT NULL,
  PRIMARY KEY  (`packcatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packcategory`
--

/*!40000 ALTER TABLE `packcategory` DISABLE KEYS */;
INSERT INTO `packcategory` (`packcatid`,`packtitle`,`packdetails`) VALUES 
 (1,'single package','Dhaka to Rangamati'),
 (2,'Double Package','Dhaka to Cox\'s Bazer');
/*!40000 ALTER TABLE `packcategory` ENABLE KEYS */;


--
-- Definition of table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `payid` int(10) unsigned NOT NULL auto_increment,
  `custid` varchar(45) default NULL,
  `payfor` varchar(45) NOT NULL,
  `bookingid` int(10) unsigned NOT NULL,
  `paytype` varchar(45) NOT NULL,
  `paydate` date NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `email` varchar(45) default NULL,
  PRIMARY KEY  (`payid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`payid`,`custid`,`payfor`,`bookingid`,`paytype`,`paydate`,`amount`,`email`) VALUES 
 (1,'603','Air',236,'cash','2019-06-26',8000,NULL),
 (2,'601','package',6,'bkash','2019-06-28',8000,NULL),
 (3,'601','package',2,'cash','2019-06-29',10000,NULL),
 (4,'603','package',2,'bkash','2019-06-29',1000,NULL),
 (5,'601','package',2,'cash','2019-06-30',1000,NULL),
 (6,'601','package',3,'cash','2019-06-25',5000,NULL),
 (7,'adaa,','package',3,'cash','2019-06-25',5000,NULL),
 (8,'Rasel,','package',4,'cash','2019-06-26',6000,NULL),
 (12,'NewUser,','Bus',118,'bkash','2019-07-01',7000,NULL),
 (13,'NewUser,','package',6,'bkash','2019-07-02',5000,NULL),
 (14,'NewUser,','Bus',114,'cash','2019-07-02',9000,NULL),
 (15,'NewUser,','package',4,'cash','2019-07-08',8000,NULL);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`emailid`,`phone`,`username`) VALUES 
 ('admin@gmail.com','+888252525','HASNAIN'),
 ('hasan@gmail.com','999','hasan'),
 ('michel@gmail.com','987456','Michel'),
 ('rasel@gmail.com','696969','Rasel'),
 ('user@gmail.com','0194599999','NewUser');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole`
--

/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` (`emailid`,`password`,`role`,`status`) VALUES 
 ('admin@gmail.com','123','ROLE_ADMIN','True'),
 ('hasan@gmail.com','123456','ROLE_USER','True'),
 ('michel@gmail.com','123','ROLE_USER','True'),
 ('rasel@gmail.com','123','ROLE_USER','True'),
 ('user@gmail.com','12345','ROLE_USER','True');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

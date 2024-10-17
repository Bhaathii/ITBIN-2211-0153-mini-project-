

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-07-25 06:21:50');

-- --------------------------------------------------------


CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(4, '578797544', 'Shamaa', 'geeth@gmail.com', 123456789, '8/30/2024', '1:30am', 'Test', '2024-08-21 16:13:13', 'Selected', '1', '2024-07-19 12:24:48'),
(5, '899118550', 'Bhathi', 'bhathi@gmail.com', 4234235423, '8/27/2024', '1:30am', 'Loreal Hair Color(Full)', '2024-08-21 16:14:14', '', '', '0000-00-00 00:00:00'),
(6, '621107928', 'John', 'abc@gmail.com', 1234567890, '8/27/2024', '1:30am', 'Rebonding', '2024-08-21 16:22:25', 'Testing', '2', '2024-08-21 16:24:10'),
(7, '184242778', 'Kusara', 'kusaa@gmail.com', 4654646546, '2024-07-23', '10:38', 'MUSTACHE TRIM', '2024-07-20 06:40:43', 'selected', '1', '2024-07-21 07:40:06'),
(8, '777343097', 'Umayangana', 'umaa@gmail.com', 2678979789, '2024-07-24', '13:23', 'Hair Cut', '2024-07-20 06:52:33', 'selected', '1', '2024-07-25 17:32:06'),
(9, '290594099', 'Oshan', 'oshaa@gmail.com', 4654654654, '2024-07-24', '14:36', 'Hair Cut', '2024-07-21 08:05:47', '', '', '2024-07-25 17:32:08'),
(10, '128617343', 'Nikith', 'nikith@gmail.com', 6876876868, '2024-07-25', '15:30', 'Hair Cut', '2024-07-23 04:56:47', '', '', '2024-07-25 17:32:11'),
(11, '600991456', 'dhakshi', 'dhakshi@gmail.com', 7987987897, '2024-07-24', '15:40', 'Hair Cut', '2024-07-23 05:10:56', 'Selected', '1', '2024-07-25 17:32:14'),
(12, '336388269', 'Achala', 'achala@gmail.com', 1234569870, '2024-07-30', '15:52', 'Hair Cut', '2024-07-25 17:22:37', 'Confirmed', '1', '2024-07-25 17:32:16');



CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(2, 'Oshan', 'oshan@gmail.com', 5565565656, 'Male', 'Taken haircut by him', '2024-07-26 11:10:02', NULL),
(5, 'Dhakshi', 'das@gmail.com', 1234567890, 'Female', 'Test', '2019-08-21 16:24:53', '2024-08-21 16:25:11'),
(6, 'Bhathi', 'bhathi@gmail.com', 9879879798, 'Male', 'vjhgjhghg;lk;lklnhfjkhkjfnkl\r\nlkjklfjlkjlkc jjlkj\r\nl;ljlkj lkcjtkrjkjne', '2024-07-21 07:42:54', NULL),
(7, 'Anuj', 'ak@gmail.com', 1234567899, 'Male', 'Test', '2021-07-25 17:25:54', '2024-07-25 17:26:31');



CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 7, 600922156, '2024-07-21 07:48:58'),
(2, 2, 9, 600922156, '2024-07-21 07:48:58'),
(3, 5, 7, 777590972, '2024-07-23 05:16:41'),
(4, 5, 9, 777590972, '2024-07-23 05:16:41'),
(6, 7, 9, 631074383, '2024-07-25 17:26:51'),
(7, 7, 15, 631074383, '2024-07-25 17:26:51');

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials & fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'colombo', 'info@gmail.com', 7896541236, NULL, '10:30 am to 8:30 pm');



CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblservices` (`ID`, `ServiceName`, `Description`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 'Activated charcoal draws bacteria, toxins, dirt and oil from the skin.', 120, '2019-07-25 11:22:38'),
(2, 'Fruit Facial', 'If its a peel-off mask, it also works as an excellent exfoliator, ridding the skin of dead cells.', 500, '2019-07-25 11:22:53'),
(3, 'Charcol Facial', 'The end result is skin that is clean and clear. When used as a powder, charcoal masks can reach deep in your pores and suck out impurities with them.', 1000, '2019-07-25 11:23:10'),
(4, 'Deluxe Menicure', 'The end result is skin that is clean and clear. When used as a powder, charcoal masks can reach deep in your pores and suck out impurities with them.', 500, '2019-07-25 11:23:34'),
(5, 'Deluxe Pedicure', 'A pedicure is a therapeutic treatment for your feet that removes dead skin, softens hard skin and shapes and treats your toenails.', 600, '2019-07-25 11:23:47'),
(6, 'Normal Menicure', 'A pedicure is a therapeutic treatment for your feet that removes dead skin, softens hard skin and shapes and treats your toenails.', 300, '2019-07-25 11:24:01'),
(7, 'Normal Pedicure', 'A pedicure is a therapeutic treatment for your feet that removes dead skin, softens hard skin and shapes and treats your toenails.', 400, '2019-07-25 11:24:19'),
(8, 'Hair Cut', 'A hairstyle, hairdo, or haircut refers to the styling of hair, usually on the human scalp. Sometimes, this could also mean an editing of facial or body hair', 250, '2019-07-25 11:24:38'),
(9, 'Style Haircut', 'A hairstyle, hairdo, or haircut refers to the styling of hair, usually on the human scalp. Sometimes, this could also mean an editing of facial or body hair', 550, '2019-07-25 11:24:53'),
(10, 'Hair Wash', 'A hairstyle, hairdo, or haircut refers to the styling of hair, usually on the human scalp. Sometimes, this could also mean an editing of facial or body hair', 3999, '2019-07-25 11:25:08'),
(11, 'Loreal Hair Color(Full)', 'hgfhgj', 1200, '2019-07-25 11:25:35'),
(12, 'Body Spa', 'It is full body spa including hair wash', 1500, '2019-08-19 13:36:27'),
(14, 'Test', 'test test', 100, '2019-08-21 15:45:50'),
(15, 'ABC', 'gjhgjhgbkhhioljhoioi', 200, '2019-08-21 16:23:23'),
(16, 'Tradinational Cut', 'khghkhlkjlkjlkjflkrjnvoireyviutyouopyiuiosueoibvjmyruopo kjhkjhkhk kjh nkhu k iuyhiu kjhihiur', 45, '2021-07-19 07:37:40'),
(17, 'MUSTACHE TRIM', 'Trim Trim Trim', 85, '2021-07-19 07:38:02'),
(18, 'Beard Trim', 'Beard Trim', 10, '2021-07-19 07:38:20');


CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(1, 'geeth@gmail.com', '2024-07-16 07:32:33'),
(2, 'bhathi@gmail.com', '2024-07-16 07:32:33'),
(3, 'oshan@gmail.com', '2024-07-21 07:36:46'),
(4, 'Kusaa@gmail.com', '2024-07-25 17:25:29');


ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;



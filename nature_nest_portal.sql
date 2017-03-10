-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2017 at 08:47 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nature_nest_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ImageId` int(11) DEFAULT NULL,
  `Phone` varchar(12) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `NicNumber` varchar(15) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Salary` float DEFAULT NULL,
  `Type` enum('Permanent','Temporary','Contract') NOT NULL DEFAULT 'Temporary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employeeleave`
--

CREATE TABLE `employeeleave` (
  `Id` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `LeaveId` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Comment` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employeerole`
--

CREATE TABLE `employeerole` (
  `EmployeeId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `overall_rating` int(11) NOT NULL,
  `overall_comment` text NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forumuser`
--

CREATE TABLE `forumuser` (
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumuser`
--

INSERT INTO `forumuser` (`username`) VALUES
('Anjalee'),
('Snotra');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `Id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leavedata`
--

CREATE TABLE `leavedata` (
  `Id` int(11) NOT NULL,
  `Type` enum('Annual','Sick','Casual','Maternity','Holiday') NOT NULL,
  `Description` varchar(500) NOT NULL,
  `MaxPerYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `Id` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `TotalAmount` float NOT NULL,
  `Terms` int(11) NOT NULL,
  `InterestRate` float NOT NULL,
  `TermAmount` float NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Status` enum('OnGoing','Completed') NOT NULL DEFAULT 'OnGoing',
  `Comment` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loanterm`
--

CREATE TABLE `loanterm` (
  `Id` int(11) NOT NULL,
  `LoanId` int(11) NOT NULL,
  `Date` date NOT NULL,
  `RemainingTerms` int(11) NOT NULL,
  `RemainingAmount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Id` int(11) NOT NULL,
  `Name` enum('Home','ContactUs','Packages','Services','Gallery','Other') NOT NULL DEFAULT 'Gallery'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Category` enum('Soup','Rice') NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `Id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `ImageId` int(11) DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '1',
  `AvailableUnits` int(11) NOT NULL,
  `Amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `message` text NOT NULL,
  `no_of_replies` int(11) NOT NULL,
  `no_of_views` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `parent_post_id` int(11) NOT NULL,
  `sf_id` int(11) NOT NULL,
  `is_main_post` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `date`, `time`, `message`, `no_of_replies`, `no_of_views`, `username`, `parent_post_id`, `sf_id`, `is_main_post`) VALUES
(1, 'Reservation', '2017-03-09', '03:12:14', 'How to reserve a room?', 5, 12, 'snotra', 1, 2, 1),
(2, 'Room Booking', '2017-03-08', '06:14:33', 'Room booking', 3, 8, 'daemon', 1, 2, 1),
(3, 'Food & beverage', '2017-03-01', '08:00:31', 'Food is good', 2, 5, 'chathu', 1, 3, 1),
(4, 'Re: Food & beverage', '2017-03-03', '15:21:00', 'No its bad. ', 2, 5, 'snotra', 1, 3, 0),
(5, 'test 2', '2017-03-01', '12:30:23', 'bla bla', 2, 4, 'devil', 2, 1, 0),
(6, 'abc', '2017-03-15', '16:21:41', 'helloooooo bla bla bla bla blaaaa', 2, 5, 'snotra', 5, 5, 0),
(7, 'nice room', '2017-03-07', '09:28:00', 'its really good.', 33, 989, 'chathu', 4, 4, 0),
(8, 'good environment', '2017-03-15', '09:28:00', 'hey hey', 2, 2, 'devil', 3, 3, 0),
(9, 'booom', '2017-03-18', '09:28:00', 'dishoom', 234, 123, 'deamon', 2, 2, 0),
(10, 'good choice', '2017-03-07', '09:28:00', 'hoo hoo', 63, 4, 'deamon', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `Id` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `ImageId` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '1',
  `DiscountPrecentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Id` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `CheckIn` date NOT NULL,
  `CheckOut` int(11) NOT NULL,
  `TotalAmount` float NOT NULL,
  `AdvancePayment` float DEFAULT NULL,
  `Balance` float DEFAULT NULL,
  `AdvancePaymentDate` date DEFAULT NULL,
  `BalanceFixedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'Select All (Admin)', 'Give full access to the portal'),
(2, 'Package Management', 'Manage the Packages'),
(3, 'Service Management', 'Manage the services'),
(4, 'Finance Management', 'Manage the finance'),
(5, 'Human Resource Management', 'HRM is the term used to describe formal systems devised for the management of people within an organization.');

-- --------------------------------------------------------

--
-- Table structure for table `rotator`
--

CREATE TABLE `rotator` (
  `ImageId` int(11) NOT NULL,
  `LocationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `Id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '1',
  `Amount` float NOT NULL,
  `ImageId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `servicetype`
--

CREATE TABLE `servicetype` (
  `service_type_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servicetypefeedback`
--

CREATE TABLE `servicetypefeedback` (
  `feedback_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subforum`
--

CREATE TABLE `subforum` (
  `sf_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_storing_post` tinyint(1) NOT NULL,
  `parent_sf_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subforum`
--

INSERT INTO `subforum` (`sf_id`, `title`, `description`, `is_storing_post`, `parent_sf_id`) VALUES
(1, 'Main Forum', 'Parent of all sub forums', 0, 1),
(2, 'Accomodation', 'Accomodation', 1, 1),
(3, 'Dining', 'Dining', 1, 1),
(4, 'Hospitality', 'Hospitality', 1, 1),
(5, 'Spa and Recreation	', 'Spa and Recreation', 1, 1),
(6, 'Experience', 'Experience', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `UserName` varchar(200) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) NOT NULL DEFAULT 'password',
  `Status` enum('Active','Inactive','Pending') NOT NULL DEFAULT 'Pending',
  `LastLogedinDate` date DEFAULT NULL,
  `ApprovedBy` int(11) NOT NULL DEFAULT '-1',
  `IsEmployee` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `unique_email` (`Email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `ImageId` (`ImageId`);

--
-- Indexes for table `employeeleave`
--
ALTER TABLE `employeeleave`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `index_EmployeeId` (`EmployeeId`),
  ADD KEY `LeaveId` (`LeaveId`),
  ADD KEY `EmployeeId` (`EmployeeId`),
  ADD KEY `LeaveId_2` (`LeaveId`);

--
-- Indexes for table `employeerole`
--
ALTER TABLE `employeerole`
  ADD PRIMARY KEY (`EmployeeId`,`RoleId`),
  ADD KEY `foreignkey_employeerole_role` (`RoleId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `forumuser`
--
ALTER TABLE `forumuser`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `leavedata`
--
ALTER TABLE `leavedata`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `index_EmployeeId` (`EmployeeId`);

--
-- Indexes for table `loanterm`
--
ALTER TABLE `loanterm`
  ADD PRIMARY KEY (`Id`,`LoanId`),
  ADD KEY `foreignkey_loanterm_loan` (`LoanId`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ImageId` (`ImageId`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `parent_post_id` (`parent_post_id`),
  ADD KEY `sf_id` (`sf_id`),
  ADD KEY `sf_id_2` (`sf_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `PackageId` (`PackageId`),
  ADD KEY `ServiceId` (`ServiceId`),
  ADD KEY `ImageId` (`ImageId`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CustomerId` (`CustomerId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rotator`
--
ALTER TABLE `rotator`
  ADD PRIMARY KEY (`ImageId`,`LocationId`),
  ADD KEY `foreignkey_location_rotator` (`LocationId`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `index_ImageId` (`ImageId`);

--
-- Indexes for table `servicetype`
--
ALTER TABLE `servicetype`
  ADD PRIMARY KEY (`service_type_id`);

--
-- Indexes for table `subforum`
--
ALTER TABLE `subforum`
  ADD PRIMARY KEY (`sf_id`),
  ADD KEY `parent_sf_id` (`parent_sf_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employeeleave`
--
ALTER TABLE `employeeleave`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `servicetype`
--
ALTER TABLE `servicetype`
  MODIFY `service_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subforum`
--
ALTER TABLE `subforum`
  MODIFY `sf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_parent_post_id` FOREIGN KEY (`parent_post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `fk_parent_sfid` FOREIGN KEY (`sf_id`) REFERENCES `subforum` (`sf_id`);

--
-- Constraints for table `subforum`
--
ALTER TABLE `subforum`
  ADD CONSTRAINT `fk_subforum_parent_sfid` FOREIGN KEY (`parent_sf_id`) REFERENCES `subforum` (`sf_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

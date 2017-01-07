--- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2017 at 06:56 AM
-- Server version: 5.6.28-log
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
  `Id` int(11) NOT NULL,
  `Quection` varchar(500) NOT NULL,
  `AnswerOne` int(11) NOT NULL,
  `AnswerTwo` int(11) NOT NULL,
  `AnswerThree` int(11) NOT NULL,
  `AnswerFour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feedbackcustomer`
--

CREATE TABLE `feedbackcustomer` (
  `Id` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `QuectionId` int(11) NOT NULL,
  `Answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `feedbackcustomer`
--
ALTER TABLE `feedbackcustomer`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `index_CustomerId` (`CustomerId`),
  ADD KEY `CustomerId` (`CustomerId`),
  ADD KEY `QuectionId` (`QuectionId`);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employeeleave`
--
ALTER TABLE `employeeleave`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedbackcustomer`
--
ALTER TABLE `feedbackcustomer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leavedata`
--
ALTER TABLE `leavedata`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `foreignkey_image_employee` FOREIGN KEY (`ImageId`) REFERENCES `image` (`Id`),
  ADD CONSTRAINT `foreignkey_user_employee` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`);

--
-- Constraints for table `employeeleave`
--
ALTER TABLE `employeeleave`
  ADD CONSTRAINT `foreignkey_employee_employeeLeave` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`Id`),
  ADD CONSTRAINT `foreignkey_leave_employeeLeave` FOREIGN KEY (`LeaveId`) REFERENCES `leavedata` (`Id`);

--
-- Constraints for table `employeerole`
--
ALTER TABLE `employeerole`
  ADD CONSTRAINT `foreignkey_employeerole_employee` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`Id`),
  ADD CONSTRAINT `foreignkey_employeerole_role` FOREIGN KEY (`RoleId`) REFERENCES `role` (`id`);

--
-- Constraints for table `feedbackcustomer`
--
ALTER TABLE `feedbackcustomer`
  ADD CONSTRAINT `foreignkey_feedback_customer` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`),
  ADD CONSTRAINT `foreignkey_feedback_feedbackcustomer` FOREIGN KEY (`QuectionId`) REFERENCES `feedback` (`Id`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `foreignkey_loan_employee` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`Id`);

--
-- Constraints for table `loanterm`
--
ALTER TABLE `loanterm`
  ADD CONSTRAINT `foreignkey_loanterm_loan` FOREIGN KEY (`LoanId`) REFERENCES `loan` (`Id`);

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `foreignkey_image_package` FOREIGN KEY (`ImageId`) REFERENCES `image` (`Id`);

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `foreignkey_image_promotion` FOREIGN KEY (`ImageId`) REFERENCES `image` (`Id`),
  ADD CONSTRAINT `foreignkey_package_promotion` FOREIGN KEY (`PackageId`) REFERENCES `package` (`Id`),
  ADD CONSTRAINT `foreignkey_service_promotion` FOREIGN KEY (`ServiceId`) REFERENCES `service` (`Id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `foreignkey_customer_reservation` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`);

--
-- Constraints for table `rotator`
--
ALTER TABLE `rotator`
  ADD CONSTRAINT `foreignkey_image_rotator` FOREIGN KEY (`ImageId`) REFERENCES `image` (`Id`),
  ADD CONSTRAINT `foreignkey_location_rotator` FOREIGN KEY (`LocationId`) REFERENCES `location` (`Id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `foreignkey_service_image` FOREIGN KEY (`ImageId`) REFERENCES `image` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

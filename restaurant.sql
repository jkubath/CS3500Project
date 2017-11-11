-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2017 at 06:38 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_names`
--

CREATE TABLE `employee_names` (
  `EmployeeID` int(5) NOT NULL,
  `FirstName` varchar(60) NOT NULL,
  `LastName` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_names`
--

INSERT INTO `employee_names` (`EmployeeID`, `FirstName`, `LastName`) VALUES
(10001, 'Matt', 'Peter'),
(10002, 'Jonah', 'Kubath'),
(10003, 'Greg', 'Smith'),
(10004, 'Joanna', 'Shaffer'),
(10005, 'Jonathon', 'Sheppard'),
(10006, 'Pablo', 'Craig'),
(10007, 'Waylon', 'Dalton'),
(10008, 'Justine', 'Henderson'),
(10009, 'Abdullah', 'Lang'),
(10010, 'Marcus', 'Cruz'),
(10011, 'Thalia', 'Cobb'),
(10012, 'Mathias', 'Little'),
(10013, 'Eddie', 'Randolph'),
(10014, 'Angela', 'Walker'),
(10015, 'Lia', 'Shelton'),
(10016, 'Hadassah', 'Hartman');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_nutrition`
--

CREATE TABLE `ingredient_nutrition` (
  `Ingredient` varchar(30) NOT NULL,
  `Calories` int(3) NOT NULL,
  `Carbs` int(3) NOT NULL,
  `Fat` int(3) NOT NULL,
  `Sodium` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_locations`
--

CREATE TABLE `store_locations` (
  `StoreNumber` int(5) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(40) NOT NULL,
  `State` varchar(2) NOT NULL,
  `ZipCode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_locations`
--

INSERT INTO `store_locations` (`StoreNumber`, `Address`, `City`, `State`, `ZipCode`) VALUES
(1, '4310 Stadium Drive', 'Kalamazoo', 'MI', 49007),
(2, '3900 Sprinkle Road', 'Kalamazoo', 'MI', 49001),
(3, '5530 Gull Road', 'Kalamazoo', 'MI', 49001),
(4, '6925 South Westnedge Avenue', 'Portage', 'MI', 49002),
(5, '10280 Miller Drive', 'Galesburg', 'MI', 49053),
(6, '710 North Grand Street', 'Schoolcraft', 'MI', 49087),
(7, '1016 West Michigan Avenue', 'Three Rivers', 'MI', 49093),
(8, '1160 East Michigan Avenue', 'Battle Creek', 'MI', 49014),
(9, '829 South Kalamazoo Street', 'Paw Paw', 'MI', 49097),
(10, '889 Marshall Street', 'Allegan', 'MI', 49010);

-- --------------------------------------------------------

--
-- Table structure for table `store_managers`
--

CREATE TABLE `store_managers` (
  `StoreNumber` int(5) NOT NULL,
  `EmployeeID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_managers`
--

INSERT INTO `store_managers` (`StoreNumber`, `EmployeeID`) VALUES
(1, 10001),
(1, 10002),
(1, 10003),
(1, 10004),
(1, 10007),
(2, 10001),
(2, 10002),
(2, 10003),
(2, 10004),
(2, 10008),
(3, 10001),
(3, 10002),
(3, 10003),
(3, 10004),
(3, 10009),
(4, 10001),
(4, 10002),
(4, 10003),
(4, 10005),
(4, 10010),
(5, 10001),
(5, 10002),
(5, 10003),
(5, 10005),
(5, 10011),
(6, 10001),
(6, 10002),
(6, 10003),
(6, 10005),
(6, 10012),
(7, 10001),
(7, 10002),
(7, 10003),
(7, 10005),
(7, 10013),
(8, 10001),
(8, 10002),
(8, 10003),
(8, 10006),
(8, 10014),
(9, 10001),
(9, 10002),
(9, 10003),
(9, 10006),
(9, 10015),
(10, 10001),
(10, 10002),
(10, 10003),
(10, 10006),
(10, 10016);

-- --------------------------------------------------------

--
-- Table structure for table `store_product_ingredients`
--

CREATE TABLE `store_product_ingredients` (
  `ProductName` varchar(30) NOT NULL,
  `Ingredient` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_product_names`
--

CREATE TABLE `store_product_names` (
  `StoreNumber` int(5) NOT NULL,
  `ProductName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `Username` varchar(40) NOT NULL,
  `FirstName` varchar(60) NOT NULL,
  `LastName` varchar(60) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(40) NOT NULL,
  `State` varchar(2) NOT NULL,
  `ZipCode` int(5) NOT NULL,
  `PhoneNumber` int(10) DEFAULT NULL,
  `DefaultStore` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`Username`, `Password`, `Level`) VALUES
('username1', 'password', 1),
('username2', 'password', 2),
('username3', 'password', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

CREATE TABLE `user_products` (
  `Username` varchar(40) NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `Ingredient` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_names`
--
ALTER TABLE `employee_names`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `ingredient_nutrition`
--
ALTER TABLE `ingredient_nutrition`
  ADD PRIMARY KEY (`Ingredient`);

--
-- Indexes for table `store_locations`
--
ALTER TABLE `store_locations`
  ADD PRIMARY KEY (`StoreNumber`);

--
-- Indexes for table `store_managers`
--
ALTER TABLE `store_managers`
  ADD PRIMARY KEY (`StoreNumber`,`EmployeeID`);

--
-- Indexes for table `store_product_ingredients`
--
ALTER TABLE `store_product_ingredients`
  ADD PRIMARY KEY (`ProductName`,`Ingredient`);

--
-- Indexes for table `store_product_names`
--
ALTER TABLE `store_product_names`
  ADD PRIMARY KEY (`StoreNumber`,`ProductName`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `user_products`
--
ALTER TABLE `user_products`
  ADD PRIMARY KEY (`Username`,`ProductName`,`Ingredient`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_names`
--
ALTER TABLE `employee_names`
  MODIFY `EmployeeID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;
--
-- AUTO_INCREMENT for table `store_locations`
--
ALTER TABLE `store_locations`
  MODIFY `StoreNumber` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

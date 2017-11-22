-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2017 at 02:01 AM
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
-- Table structure for table `ingredient_information`
--

CREATE TABLE `ingredient_information` (
  `IngredientID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Price` float NOT NULL,
  `Calories` int(3) NOT NULL,
  `Carbs` int(3) NOT NULL,
  `Fat` int(3) NOT NULL,
  `Sodium` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredient_information`
--

INSERT INTO `ingredient_information` (`IngredientID`, `Name`, `Price`, `Calories`, `Carbs`, `Fat`, `Sodium`) VALUES
(1, 'Burger Patty', 1, 209, 20, 14, 71),
(2, 'Bun', 0, 280, 39, 9, 330),
(3, 'Cheese', 0.5, 70, 0, 8, 310),
(4, 'Ketchup', 0, 20, 5, 0, 160),
(5, 'Mustard', 0, 0, 0, 0, 55),
(6, 'Pickles', 0, 5, 1, 0, 260),
(7, 'Onions', 0, 10, 2, 0, 1),
(8, 'Tomatoes', 0, 9, 2, 0, 3),
(9, 'Lettuce', 0, 4, 1, 0, 3),
(10, 'Mushrooms', 0, 5, 1, 0, 55),
(11, 'Jalapeno Peppers', 0, 3, 0, 0, 0),
(12, 'Green Peppers', 0, 5, 1, 0, 1),
(13, 'Hot Sauce', 0, 0, 0, 0, 200),
(14, 'Mayo', 0, 100, 0, 11, 70),
(15, 'Bacon', 0.5, 86, 0, 7, 274),
(16, 'BBQ Sauce', 0, 29, 7, 0, 175),
(17, 'Banana Peppers', 0, 27, 2, 0, 13),
(18, 'Avocado', 0, 234, 12, 21, 10),
(19, 'Blue Cheese', 0.5, 119, 1, 10, 471),
(20, 'Ranch', 0, 73, 1, 8, 164),
(21, 'Fries', 2, 365, 48, 17, 246),
(22, 'Water', 0, 0, 0, 0, 0),
(23, 'Coca-Cola', 2, 140, 39, 0, 45),
(24, 'Diet Coke', 2, 0, 0, 0, 40),
(25, 'Cherry Coke', 2, 150, 42, 0, 35),
(26, 'Sprite', 2, 140, 38, 0, 65),
(27, 'Fanta', 2, 100, 28, 0, 35),
(28, 'Minute Maid', 2, 110, 27, 0, 15),
(29, 'Powerade', 2, 80, 21, 0, 150);

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
-- Table structure for table `store_picture_pairs`
--

CREATE TABLE `store_picture_pairs` (
  `PictureID` int(11) NOT NULL,
  `UnlitPicture` varchar(255) NOT NULL,
  `LitPicture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_picture_pairs`
--

INSERT INTO `store_picture_pairs` (`PictureID`, `UnlitPicture`, `LitPicture`) VALUES
(1, 'UnlitBurger.png', 'LitBurger.png'),
(2, 'UnlitDoubleCheeseburger.png', 'LitDoubleCheeseburger.png'),
(3, 'UnlitBaconBurger.png', 'LitBaconBurger.png');

-- --------------------------------------------------------

--
-- Table structure for table `store_product_ingredients`
--

CREATE TABLE `store_product_ingredients` (
  `ProductName` varchar(30) NOT NULL,
  `IngredientID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_product_ingredients`
--

INSERT INTO `store_product_ingredients` (`ProductName`, `IngredientID`) VALUES
('Avocado Burger', 1),
('Avocado Burger', 2),
('Avocado Burger', 3),
('Avocado Burger', 18),
('Bacon Burger', 1),
('Bacon Burger', 2),
('Bacon Burger', 3),
('Bacon Burger', 4),
('Bacon Burger', 14),
('Bacon Burger', 15),
('Bacon Fries', 3),
('Bacon Fries', 15),
('Bacon Fries', 21),
('BBQ Burger', 1),
('BBQ Burger', 2),
('BBQ Burger', 3),
('BBQ Burger', 15),
('BBQ Burger', 16),
('Blue Cheese Burger', 1),
('Blue Cheese Burger', 2),
('Blue Cheese Burger', 7),
('Blue Cheese Burger', 9),
('Blue Cheese Burger', 19),
('California Burger', 1),
('California Burger', 2),
('California Burger', 3),
('California Burger', 7),
('California Burger', 8),
('California Burger', 9),
('Cheese Fries', 3),
('Cheese Fries', 21),
('Cheeseburger', 1),
('Cheeseburger', 2),
('Cheeseburger', 3),
('Cheeseburger', 4),
('Cheeseburger', 5),
('Cheeseburger', 6),
('Cheeseburger', 7),
('Cheeseburger', 8),
('Cheeseburger', 9),
('Cheeseburger', 14),
('Cherry Coke', 25),
('Coca-Cola', 23),
('Diet Coke', 24),
('Fanta', 27),
('Fries', 21),
('Hamburger', 1),
('Hamburger', 2),
('Hamburger', 4),
('Hamburger', 5),
('Hamburger', 6),
('Hamburger', 7),
('Hamburger', 8),
('Hamburger', 9),
('Hamburger', 14),
('Inferno Burger', 1),
('Inferno Burger', 2),
('Inferno Burger', 3),
('Inferno Burger', 11),
('Inferno Burger', 13),
('Minute Maid', 28),
('Mushroom Burger', 1),
('Mushroom Burger', 2),
('Mushroom Burger', 3),
('Mushroom Burger', 10),
('Pepper Burger', 1),
('Pepper Burger', 2),
('Pepper Burger', 3),
('Pepper Burger', 11),
('Pepper Burger', 12),
('Pepper Burger', 17),
('Powerade', 29),
('Ranch Burger', 1),
('Ranch Burger', 2),
('Ranch Burger', 3),
('Ranch Burger', 15),
('Ranch Burger', 20),
('Spicy Fries', 11),
('Spicy Fries', 13),
('Spicy Fries', 21),
('Sprite', 26),
('Tartar Burger', 1),
('Tartar Burger', 2),
('Tartar Burger', 3),
('Tartar Burger', 6),
('Tartar Burger', 14),
('Veggie Burger', 2),
('Veggie Burger', 3),
('Veggie Burger', 4),
('Veggie Burger', 5),
('Veggie Burger', 6),
('Veggie Burger', 7),
('Veggie Burger', 8),
('Veggie Burger', 9),
('Veggie Burger', 14),
('Water', 22);

-- --------------------------------------------------------

--
-- Table structure for table `store_product_offerings`
--

CREATE TABLE `store_product_offerings` (
  `StoreNumber` int(5) NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `ProductType` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_product_offerings`
--

INSERT INTO `store_product_offerings` (`StoreNumber`, `ProductName`, `ProductType`) VALUES
(1, 'Avocado Burger', 'Burger'),
(1, 'Bacon Burger', 'Burger'),
(1, 'Bacon Fries', 'Side'),
(1, 'BBQ Burger', 'Burger'),
(1, 'Blue Cheese Burger', 'Burger'),
(1, 'California Burger', 'Burger'),
(1, 'Cheese Fries', 'Side'),
(1, 'Cheeseburger', 'Burger'),
(1, 'Cherry Coke', 'Drink'),
(1, 'Coca-Cola', 'Drink'),
(1, 'Diet Coke', 'Drink'),
(1, 'Fanta', 'Drink'),
(1, 'Fries', 'Side'),
(1, 'Hamburger', 'Burger'),
(1, 'Inferno Burger', 'Burger'),
(1, 'Minute Maid', 'Drink'),
(1, 'Pepper Burger', 'Burger'),
(1, 'Powerade', 'Drink'),
(1, 'Ranch Burger', 'Burger'),
(1, 'Spicy Fries', 'Side'),
(1, 'Sprite', 'Drink'),
(1, 'Tartar Burger', 'Burger'),
(1, 'Veggie Burger', 'Burger'),
(1, 'Water', 'Drink'),
(2, 'Bacon Burger', 'Burger'),
(2, 'Bacon Fries', 'Side'),
(2, 'BBQ Burger', 'Burger'),
(2, 'Cheese Fries', 'Side'),
(2, 'Cheeseburger', 'Burger'),
(2, 'Cherry Coke', 'Drink'),
(2, 'Coca-Cola', 'Drink'),
(2, 'Fries', 'Side'),
(2, 'Hamburger', 'Burger'),
(2, 'Inferno Burger', 'Burger'),
(2, 'Minute Maid', 'Drink'),
(2, 'Powerade', 'Drink'),
(2, 'Ranch Burger', 'Burger'),
(2, 'Sprite', 'Drink'),
(2, 'Tartar Burger', 'Burger'),
(2, 'Veggie Burger', 'Burger'),
(2, 'Water', 'Drink'),
(3, 'Bacon Burger', 'Burger'),
(3, 'BBQ Burger', 'Burger'),
(3, 'Cheese Fries', 'Side'),
(3, 'Cheeseburger', 'Burger'),
(3, 'Cherry Coke', 'Drink'),
(3, 'Coca-Cola', 'Drink'),
(3, 'Diet Coke', 'Drink'),
(3, 'Fanta', 'Drink'),
(3, 'Fries', 'Side'),
(3, 'Hamburger', 'Burger'),
(3, 'Inferno Burger', 'Burger'),
(3, 'Pepper Burger', 'Burger'),
(3, 'Spicy Fries', 'Side'),
(3, 'Sprite', 'Drink'),
(3, 'Veggie Burger', 'Burger'),
(3, 'Water', 'Drink'),
(4, 'Avocado Burger', 'Burger'),
(4, 'Bacon Burger', 'Burger'),
(4, 'Blue Cheese Burger', 'Burger'),
(4, 'California Burger', 'Burger'),
(4, 'Cheese Fries', 'Side'),
(4, 'Cheeseburger', 'Burger'),
(4, 'Coca-Cola', 'Drink'),
(4, 'Diet Coke', 'Drink'),
(4, 'Fries', 'Side'),
(4, 'Hamburger', 'Burger'),
(4, 'Minute Maid', 'Drink'),
(4, 'Powerade', 'Drink'),
(4, 'Tartar Burger', 'Burger'),
(4, 'Veggie Burger', 'Burger'),
(4, 'Water', 'Drink'),
(5, 'Bacon Burger', 'Burger'),
(5, 'BBQ Burger', 'Burger'),
(5, 'Cheeseburger', 'Burger'),
(5, 'Cherry Coke', 'Drink'),
(5, 'Coca-Cola', 'Drink'),
(5, 'Diet Coke', 'Drink'),
(5, 'Fries', 'Side'),
(5, 'Hamburger', 'Burger'),
(5, 'Mushroom Burger', 'Burger'),
(5, 'Ranch Burger', 'Burger'),
(5, 'Sprite', 'Drink'),
(5, 'Veggie Burger', 'Burger'),
(5, 'Water', 'Drink'),
(6, 'Bacon Burger', 'Burger'),
(6, 'BBQ Burger', 'Burger'),
(6, 'California Burger', 'Burger'),
(6, 'Cheeseburger', 'Burger'),
(6, 'Coca-Cola', 'Drink'),
(6, 'Diet Coke', 'Drink'),
(6, 'Fries', 'Side'),
(6, 'Hamburger', 'Burger'),
(6, 'Inferno Burger', 'Burger'),
(6, 'Minute Maid', 'Drink'),
(6, 'Pepper Burger', 'Burger'),
(6, 'Powerade', 'Drink'),
(6, 'Ranch Burger', 'Burger'),
(6, 'Spicy Fries', 'Side'),
(6, 'Veggie Burger', 'Burger'),
(6, 'Water', 'Drink'),
(7, 'Bacon Burger', 'Burger'),
(7, 'Bacon Fries', 'Side'),
(7, 'BBQ Burger', 'Burger'),
(7, 'Blue Cheese Burger', 'Burger'),
(7, 'California Burger', 'Burger'),
(7, 'Cheese Fries', 'Side'),
(7, 'Cheeseburger', 'Burger'),
(7, 'Cherry Coke', 'Drink'),
(7, 'Coca-Cola', 'Drink'),
(7, 'Fanta', 'Drink'),
(7, 'Fries', 'Side'),
(7, 'Hamburger', 'Burger'),
(7, 'Minute Maid', 'Drink'),
(7, 'Powerade', 'Drink'),
(7, 'Ranch Burger', 'Burger'),
(7, 'Spicy Fries', 'Side'),
(7, 'Veggie Burger', 'Burger'),
(7, 'Water', 'Drink'),
(8, 'Avocado Burger', 'Burger'),
(8, 'Bacon Burger', 'Burger'),
(8, 'BBQ Burger', 'Burger'),
(8, 'Blue Cheese Burger', 'Burger'),
(8, 'Cheeseburger', 'Burger'),
(8, 'Cherry Coke', 'Drink'),
(8, 'Coca-Cola', 'Drink'),
(8, 'Diet Coke', 'Drink'),
(8, 'Fanta', 'Drink'),
(8, 'Fries', 'Side'),
(8, 'Hamburger', 'Burger'),
(8, 'Inferno Burger', 'Burger'),
(8, 'Minute Maid', 'Drink'),
(8, 'Pepper Burger', 'Burger'),
(8, 'Powerade', 'Drink'),
(8, 'Ranch Burger', 'Burger'),
(8, 'Spicy Fries', 'Side'),
(8, 'Tartar Burger', 'Burger'),
(8, 'Veggie Burger', 'Burger'),
(8, 'Water', 'Drink'),
(9, 'Avocado Burger', 'Burger'),
(9, 'Bacon Burger', 'Burger'),
(9, 'BBQ Burger', 'Burger'),
(9, 'Blue Cheese Burger', 'Burger'),
(9, 'Cheese Fries', 'Side'),
(9, 'Cheeseburger', 'Burger'),
(9, 'Cherry Coke', 'Drink'),
(9, 'Coca-Cola', 'Drink'),
(9, 'Diet Coke', 'Drink'),
(9, 'Fries', 'Side'),
(9, 'Hamburger', 'Burger'),
(9, 'Powerade', 'Drink'),
(9, 'Ranch Burger', 'Burger'),
(9, 'Spicy Fries', 'Side'),
(9, 'Veggie Burger', 'Burger'),
(9, 'Water', 'Drink'),
(10, 'Bacon Burger', 'Burger'),
(10, 'Cheeseburger', 'Burger'),
(10, 'Coca-Cola', 'Drink'),
(10, 'Diet Coke', 'Drink'),
(10, 'Fries', 'Side'),
(10, 'Hamburger', 'Burger'),
(10, 'Veggie Burger', 'Burger'),
(10, 'Water', 'Drink');

-- --------------------------------------------------------

--
-- Table structure for table `store_product_pictures`
--

CREATE TABLE `store_product_pictures` (
  `ProductName` varchar(30) NOT NULL,
  `PictureID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_product_pictures`
--

INSERT INTO `store_product_pictures` (`ProductName`, `PictureID`) VALUES
('Avocado Burger', 1),
('Bacon Burger', 3),
('BBQ Burger', 3),
('Blue Cheese Burger', 2),
('California Burger', 1),
('Cheeseburger', 2),
('Hamburger', 1),
('Inferno Burger', 3),
('Pepper Burger', 2),
('Ranch Burger', 1),
('Tartar Burger', 1),
('Veggie Burger', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_comments`
--

CREATE TABLE `user_comments` (
  `Username` varchar(40) NOT NULL,
  `Comment` varchar(60) NOT NULL,
  `CommentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Selected` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_comments`
--

INSERT INTO `user_comments` (`Username`, `Comment`, `CommentDate`, `Selected`) VALUES
('username1', 'That was one of the best burgers I\'ve had in a long time!', '2017-11-14 02:39:50', 'y'),
('username1', 'Your burgers are the BEST!!!', '2017-11-22 00:58:20', 'n'),
('username2', 'WOW! No word is fit for food THAT good.', '2017-11-14 02:39:50', 'y'),
('username3', 'Your life\'s not complete until you\'ve been to Three Guys.', '2017-11-14 02:39:50', 'y');

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
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `EmailAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`Username`, `FirstName`, `LastName`, `Address`, `City`, `State`, `ZipCode`, `PhoneNumber`, `EmailAddress`) VALUES
('username1', 'First', 'Guy', '1st Guy Road', 'Kalamazoo', 'MI', 49007, '1111111111', 'matthew.h.peter@wmich.edu'),
('username2', 'Second', 'Guy', '2nd Guy Road', 'Kalamazoo', 'MI', 49007, '2222222222', 'matthew.h.peter@wmich.edu'),
('username3', 'Third', 'Guy', '3rd Guy Road', 'Kalamazoo', 'MI', 49007, '3333333333', 'matthew.h.peter@wmich.edu');

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
  `IngredientID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_products`
--

INSERT INTO `user_products` (`Username`, `ProductName`, `IngredientID`) VALUES
('username1', 'A Good Burger', 1),
('username1', 'A Good Burger', 2),
('username1', 'A Good Burger', 3),
('username1', 'A Good Burger', 4),
('username1', 'The Banana Pepper Burger', 1),
('username1', 'The Banana Pepper Burger', 2),
('username1', 'The Banana Pepper Burger', 3),
('username1', 'The Banana Pepper Burger', 17),
('username1', 'The Blue Cheese Burger', 1),
('username1', 'The Blue Cheese Burger', 2),
('username1', 'The Blue Cheese Burger', 3),
('username1', 'The Blue Cheese Burger', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_names`
--
ALTER TABLE `employee_names`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `ingredient_information`
--
ALTER TABLE `ingredient_information`
  ADD PRIMARY KEY (`IngredientID`);

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
-- Indexes for table `store_picture_pairs`
--
ALTER TABLE `store_picture_pairs`
  ADD PRIMARY KEY (`PictureID`);

--
-- Indexes for table `store_product_ingredients`
--
ALTER TABLE `store_product_ingredients`
  ADD PRIMARY KEY (`ProductName`,`IngredientID`);

--
-- Indexes for table `store_product_offerings`
--
ALTER TABLE `store_product_offerings`
  ADD PRIMARY KEY (`StoreNumber`,`ProductName`);

--
-- Indexes for table `store_product_pictures`
--
ALTER TABLE `store_product_pictures`
  ADD PRIMARY KEY (`ProductName`);

--
-- Indexes for table `user_comments`
--
ALTER TABLE `user_comments`
  ADD PRIMARY KEY (`Username`,`CommentDate`);

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
  ADD PRIMARY KEY (`Username`,`ProductName`,`IngredientID`);

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

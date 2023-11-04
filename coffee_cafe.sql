-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 05:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `cash_on_delivery`
--

CREATE TABLE `cash_on_delivery` (
  `Pay_ID` char(10) NOT NULL,
  `Payment_amount` float NOT NULL,
  `Bill_Reciept` varchar(10) DEFAULT NULL,
  `Customer_ID` char(10) NOT NULL,
  `Delivery_Staff_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cash_on_delivery`
--

INSERT INTO `cash_on_delivery` (`Pay_ID`, `Payment_amount`, `Bill_Reciept`, `Customer_ID`, `Delivery_Staff_ID`) VALUES
('7001', 9, '8001', '4004', '2009'),
('7002', 14, '8002', '4005', '2010');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` char(10) NOT NULL,
  `Email_Address` varchar(50) DEFAULT NULL,
  `Delivery_Address` varchar(200) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Email_Address`, `Delivery_Address`, `Name`) VALUES
('4001', 'henry@gmail.com', 'No.7 Galle Road Colombo 06', 'Henry Jayden'),
('4002', 'Jeo@gmail.com', 'No.42 Baseline Road Colombo 09', 'Joe Biden'),
('4003', 'Steve@gmail.com', 'No.13 Cinemon Garden Colombo 07', 'Steve Rogers'),
('4004', 'Tony@gmail.com', 'No.122 Galle Road Colombo 06', 'Tony Stark'),
('4005', 'Tom@gmail.com', 'No.21 Deans Road Colombo 10', 'Tom Cruise');

-- --------------------------------------------------------

--
-- Table structure for table `customer_contacts`
--

CREATE TABLE `customer_contacts` (
  `Customer_ID` char(10) NOT NULL,
  `Contact_Number` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_contacts`
--

INSERT INTO `customer_contacts` (`Customer_ID`, `Contact_Number`) VALUES
('4001', '771234567'),
('4002', '711234567'),
('4003', '761234567'),
('4004', '741234567'),
('4005', '751234567');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_staff`
--

CREATE TABLE `delivery_staff` (
  `Staff_ID` char(10) NOT NULL,
  `Driving_License_Number` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_staff`
--

INSERT INTO `delivery_staff` (`Staff_ID`, `Driving_License_Number`) VALUES
('2008', 'A1234567'),
('2009', 'B1234567'),
('2010', 'C1234567');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `Div_ID` char(10) NOT NULL,
  `Div_name` varchar(30) NOT NULL,
  `Supervisor_Staff_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`Div_ID`, `Div_name`, `Supervisor_Staff_ID`) VALUES
('1001', 'Management', '2001'),
('1002', 'Finance', '2001'),
('1003', 'Delivery', '2001'),
('1004', 'Cooking', '2001'),
('1005', 'Customer Service', '2001');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Staff_ID` char(10) NOT NULL,
  `F_name` varchar(20) NOT NULL,
  `Minit` varchar(20) DEFAULT NULL,
  `L_name` varchar(20) DEFAULT NULL,
  `DOB` char(11) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `Manager_Staff_ID` char(10) DEFAULT NULL,
  `Div_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Staff_ID`, `F_name`, `Minit`, `L_name`, `DOB`, `Designation`, `Manager_Staff_ID`, `Div_ID`) VALUES
('2001', 'Johnny', 'L', 'Depp', '1973.06.12', 'Supervisor', NULL, '1001'),
('2002', 'Christian', 'A', 'Bale', '1979.12.08', 'Manager', '2001', '1001'),
('2003', 'Tom', 'F', 'Hanks', '1977.10.19', 'Manager', '2001', '1001'),
('2004', 'Brad', 'R', 'Pitt', '1986.09.09', 'Steward', '2002', '1005'),
('2005', 'Jack', 'I', 'Nicholson', '1987.05.18', 'Steward', '2002', '1005'),
('2006', 'George', 'S', 'Clooney', '1991.02.14', 'Steward', '2002', '1005'),
('2007', 'Jude', 'U', 'Law', '1990.04.14', 'Steward', '2002', '1005'),
('2008', 'Harrison', 'H', 'Ford', '1996.04.14', 'Delivery Staff', '2003', '1003'),
('2009', ' Ryan', 'O', 'Gosling', '1998.08.23', 'Delivery Staff', '2003', '1003'),
('2010', ' Hugh', 'D', 'Jackman', '1995.07.21', 'Delivery Staff', '2003', '1003');

-- --------------------------------------------------------

--
-- Table structure for table `employee_contacts`
--

CREATE TABLE `employee_contacts` (
  `Staff_ID` char(10) NOT NULL,
  `Contact_Number` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_contacts`
--

INSERT INTO `employee_contacts` (`Staff_ID`, `Contact_Number`) VALUES
('2001', '710123456'),
('2002', '720123456'),
('2003', '740123456'),
('2004', '750123456'),
('2005', '760123456'),
('2006', '770123456'),
('2007', '780123456'),
('2008', '700123456'),
('2009', '777123456'),
('2010', '767123456');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Item_ID` char(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Item_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Item_ID`, `Name`, `Description`, `Price`, `Item_type`) VALUES
('3001', 'Cappuccino', 'Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam. An alchemy of barista artistry and craft.', 8, 'Hot Beverage'),
('3002', 'Espresso', 'Our smooth signature Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything we do.', 6.5, 'Hot Beverage'),
('3003', 'Chai Tea Latte', 'Black tea infused with cinnamon, clove and other warming spices is combined with steamed milk and topped with foam for the perfect balance of sweet and spicy. An iconic chai cup.', 6, 'Hot Beverage'),
('3004', 'Chai Tea', 'Black tea infused with warm clove, cardamom, cinnamon and ginger notes. A bold, distinctive chai tea.', 5, 'Hot Beverage'),
('3005', 'Iced Coffee with Milk', 'Freshly brewed Starbucks® Iced Coffee Blend with milk served chilled and sweetened over ice. An absolutely, seriously, refreshingly lift to any day.', 8.2, 'Cold Beverage'),
('3006', 'Iced Chai Tea Latte', 'Black tea infused with cinnamon, clove, and other warming spices are combined with milk and ice for the perfect balance of sweet and spicy.', 6.2, 'Cold Beverage'),
('3007', 'Gingerbread Biscotti', 'This gingerbread biscotti makes a festively flavored, crunchy and dippable baked treat that perfectly complements your coffee', 9, 'Snack'),
('3008', 'Shortbread Cookies', 'Our two-pack of butter shortbread cookies made with quality ingredients create a melt-in-your-mouth texture in every bite.', 8.5, 'Snack'),
('3009', 'Rip van Wafels – Honey & Oats', 'A blend of vanilla, honey and oats come together to create a uniquely textured cookie—crispy and chewy goodness.', 8, 'Snack'),
('3010', 'Cinnamon Coffee Cake', 'Buttery, moist, coffee cake swirled with a cinnamon-sugar blend and finished with a crunchy streusel topping.', 7, 'Cake'),
('3011', 'Blueberry Muffin', 'Soft muffin with sweet, juicy blueberries and a hint of lemon, finished with a crunchy sugar topping.', 5, 'Cake'),
('3012', 'Pumpkin Cream Cheese Muffin', 'A spiced pumpkin muffin topped with sweet cream cheese filling and a sprinkling of chopped, spiced pepitas.', 5.5, 'Cake'),
('3013', 'Fruit Salad', 'Combines pineapple, kiwi, bananas, oranges, grapes, and berries in a sweet citrusy sauce.', 4.5, 'Dessert'),
('3014', 'Gulab Jamun', 'These fried dumplings are scented with cardamom and steeped in rose and saffron syrup.', 3, 'Dessert'),
('3015', 'Coffee Toffee', 'We use Royal Special as the base of this high quality flavoured coffee. A toffee coffee infused medium roast.', 0.5, 'Toffee'),
('3016', 'Cheese and Onion', 'Fresh from our Test Kitchen, these scone-shaped biscuits have a savory onion-and-cheddar flavor and a golden shell. Serve them with a pat of butter alongside your favorite soup.', 0.75, 'Biscuit');

-- --------------------------------------------------------

--
-- Table structure for table `online_pay`
--

CREATE TABLE `online_pay` (
  `Pay_ID` char(10) NOT NULL,
  `Payment_amount` float NOT NULL,
  `Card_Method` varchar(10) DEFAULT NULL,
  `Customer_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_pay`
--

INSERT INTO `online_pay` (`Pay_ID`, `Payment_amount`, `Card_Method`, `Customer_ID`) VALUES
('6001', 62.7, 'VISA', '4001'),
('6002', 31.2, 'MASTER', '4002'),
('6003', 33.4, 'VISA', '4003');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` char(10) NOT NULL,
  `Date_and_Time` datetime DEFAULT NULL,
  `Customer_ID` char(10) NOT NULL,
  `Delivery_Staff_ID` char(10) NOT NULL,
  `Steward_Staff_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Date_and_Time`, `Customer_ID`, `Delivery_Staff_ID`, `Steward_Staff_ID`) VALUES
('5001', '2022-11-02 12:32:36', '4001', '2008', '2004'),
('5002', '2022-11-11 18:24:20', '4002', '2009', '2005'),
('5003', '2022-11-13 07:59:12', '4003', '2010', '2006'),
('5004', '2022-11-17 18:44:45', '4004', '2009', '2007'),
('5005', '2022-11-17 19:20:20', '4005', '2010', '2005'),
('5006', '2022-12-01 18:24:20', '4001', '2009', '2005'),
('5007', '2022-12-01 18:26:10', '4001', '2008', '2006'),
('5008', '2022-12-05 13:13:13', '4002', '2008', '2007'),
('5009', '2022-12-12 18:55:59', '4001', '2009', '2004'),
('5010', '2022-12-18 08:24:20', '4003', '2010', '2005'),
('5011', '2022-12-18 08:27:51', '4003', '2008', '2004');

-- --------------------------------------------------------

--
-- Table structure for table `order_and_items`
--

CREATE TABLE `order_and_items` (
  `Order_ID` char(10) NOT NULL,
  `Item_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_and_items`
--

INSERT INTO `order_and_items` (`Order_ID`, `Item_ID`) VALUES
('5001', '3001'),
('5001', '3007'),
('5001', '3010'),
('5002', '3003'),
('5002', '3007'),
('5003', '3002'),
('5004', '3007'),
('5005', '3004'),
('5005', '3007'),
('5006', '3010'),
('5007', '3002'),
('5007', '3011'),
('5007', '3012'),
('5008', '3005'),
('5008', '3009'),
('5009', '3006'),
('5009', '3008'),
('5010', '3013'),
('5011', '3001'),
('5011', '3005'),
('5011', '3006');

-- --------------------------------------------------------

--
-- Table structure for table `steward`
--

CREATE TABLE `steward` (
  `Staff_ID` char(10) NOT NULL,
  `Knowledge_in_Technology` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `steward`
--

INSERT INTO `steward` (`Staff_ID`, `Knowledge_in_Technology`) VALUES
('2004', 'Knowledge in Tracking, using the tracking devices'),
('2005', 'Knowledge in Tracking, using the tracking devices'),
('2006', 'Knowledge in Tracking, using the tracking devices'),
('2007', 'Knowledge in Tracking, using the tracking devices');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_and_manager`
--

CREATE TABLE `supervisor_and_manager` (
  `Staff_ID` char(10) NOT NULL,
  `Years_of_Experience` int(11) DEFAULT NULL,
  `Years_of_Experience_Flag` tinyint(1) DEFAULT NULL,
  `Education_Qualifications` varchar(500) DEFAULT NULL,
  `Education_Qualifications_Flag` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisor_and_manager`
--

INSERT INTO `supervisor_and_manager` (`Staff_ID`, `Years_of_Experience`, `Years_of_Experience_Flag`, `Education_Qualifications`, `Education_Qualifications_Flag`) VALUES
('2001', 10, 1, 'A Master of Business Administration degree', 1),
('2002', 7, 1, 'Bachelor of Business', 1),
('2003', 5, 1, 'Bachelor of Marketing ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cash_on_delivery`
--
ALTER TABLE `cash_on_delivery`
  ADD PRIMARY KEY (`Pay_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Delivery_Staff_ID` (`Delivery_Staff_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD PRIMARY KEY (`Customer_ID`,`Contact_Number`);

--
-- Indexes for table `delivery_staff`
--
ALTER TABLE `delivery_staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`Div_ID`),
  ADD KEY `Supervisor_Staff_ID` (`Supervisor_Staff_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD KEY `Manager_Staff_ID` (`Manager_Staff_ID`),
  ADD KEY `Div_ID` (`Div_ID`);

--
-- Indexes for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD PRIMARY KEY (`Staff_ID`,`Contact_Number`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `online_pay`
--
ALTER TABLE `online_pay`
  ADD PRIMARY KEY (`Pay_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Delivery_Staff_ID` (`Delivery_Staff_ID`),
  ADD KEY `Steward_Staff_ID` (`Steward_Staff_ID`);

--
-- Indexes for table `order_and_items`
--
ALTER TABLE `order_and_items`
  ADD PRIMARY KEY (`Order_ID`,`Item_ID`),
  ADD KEY `Item_ID` (`Item_ID`);

--
-- Indexes for table `steward`
--
ALTER TABLE `steward`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `supervisor_and_manager`
--
ALTER TABLE `supervisor_and_manager`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cash_on_delivery`
--
ALTER TABLE `cash_on_delivery`
  ADD CONSTRAINT `cash_on_delivery_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `cash_on_delivery_ibfk_2` FOREIGN KEY (`Delivery_Staff_ID`) REFERENCES `delivery_staff` (`Staff_ID`);

--
-- Constraints for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD CONSTRAINT `customer_contacts_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `delivery_staff`
--
ALTER TABLE `delivery_staff`
  ADD CONSTRAINT `delivery_staff_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `employee` (`Staff_ID`);

--
-- Constraints for table `division`
--
ALTER TABLE `division`
  ADD CONSTRAINT `division_ibfk_1` FOREIGN KEY (`Supervisor_Staff_ID`) REFERENCES `supervisor_and_manager` (`Staff_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Manager_Staff_ID`) REFERENCES `supervisor_and_manager` (`Staff_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Div_ID`) REFERENCES `division` (`Div_ID`);

--
-- Constraints for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD CONSTRAINT `employee_contacts_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `employee` (`Staff_ID`);

--
-- Constraints for table `online_pay`
--
ALTER TABLE `online_pay`
  ADD CONSTRAINT `online_pay_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Delivery_Staff_ID`) REFERENCES `delivery_staff` (`Staff_ID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Steward_Staff_ID`) REFERENCES `steward` (`Staff_ID`);

--
-- Constraints for table `order_and_items`
--
ALTER TABLE `order_and_items`
  ADD CONSTRAINT `order_and_items_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  ADD CONSTRAINT `order_and_items_ibfk_2` FOREIGN KEY (`Item_ID`) REFERENCES `item` (`Item_ID`);

--
-- Constraints for table `steward`
--
ALTER TABLE `steward`
  ADD CONSTRAINT `steward_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `employee` (`Staff_ID`);

--
-- Constraints for table `supervisor_and_manager`
--
ALTER TABLE `supervisor_and_manager`
  ADD CONSTRAINT `supervisor_and_manager_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `employee` (`Staff_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 10:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `cuname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `aadharno` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `shippingadd` varchar(200) NOT NULL,
  `uid` varchar(10) NOT NULL,
  `total` varchar(100) NOT NULL,
  `recieved` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cuname`, `email`, `phno`, `aadharno`, `state`, `city`, `shippingadd`, `uid`, `total`, `recieved`, `balance`) VALUES
(1, 'Riya', 'riya@gmail.com', '1542', '471285963214', 'Tamil nadu', 'hukkeri', 'bagi general store', '4', '100', '25', '75'),
(2, 'nitya', 'nitya', '1485', '142536521458', 'Gujrat', 'kohim', 'here', '4', '100', '100', '0');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `SID` int(11) NOT NULL,
  `INVOICE_NO` int(11) NOT NULL,
  `INVOICE_DATE` date NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  `CADDRESS` varchar(150) NOT NULL,
  `CCITY` varchar(50) NOT NULL,
  `GRAND_TOTAL` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`SID`, `INVOICE_NO`, `INVOICE_DATE`, `CNAME`, `CADDRESS`, `CCITY`, `GRAND_TOTAL`) VALUES
(17, 12352, '2023-12-15', 'sakshi', 'adf', 'sfg', 740.25),
(18, 12353, '2023-12-15', 'asfghhj', 'scghjj', 'adfgh', 8910.72),
(19, 12354, '2023-12-11', 'll', 'k', 'kk', 10.50),
(20, 12355, '2023-12-07', 'uuy', 'ytrytr', 'uytr', 85.05),
(21, 12356, '2023-12-07', 'yuy', 'yuy', 'yuy', 925.12),
(22, 12357, '2023-12-29', 'er', 'er', 'er', 16.80),
(23, 12358, '2023-12-09', 'ty', 'ty', 'ty', 16.64),
(24, 12359, '2023-12-12', '4', '4', '4', 16.64),
(25, 12360, '2023-12-14', 'rr', 'rr', 'rr', 590.48),
(26, 12361, '2023-12-14', 'gy', 'gy', 'gy', 69.12),
(27, 12362, '2023-12-07', 'hu', 'hu', 'hu', 12800.00);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `ID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `PNAME` varchar(100) NOT NULL,
  `PRICE` double(10,2) NOT NULL,
  `QTY` int(11) NOT NULL,
  `GST` int(100) NOT NULL,
  `TOTAL` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`ID`, `SID`, `PNAME`, `PRICE`, `QTY`, `GST`, `TOTAL`) VALUES
(102, 17, 'afghg', 235.00, 3, 5, 740.25),
(103, 18, 'adfgh', 234.00, 34, 12, 8910.72),
(104, 25, 'rr22', 22.00, 22, 22, 590.48),
(105, 26, 'gh', 8.00, 8, 8, 69.12),
(106, 27, 'p1', 10.00, 1000, 28, 12800.00);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `uid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `uid`) VALUES
(1, 'we', 'we', '4'),
(2, 'ri', 'ri', '1'),
(3, 'ri', '', '1'),
(4, 'dhanu', 'dh', '6'),
(5, 'we', 'we', '3'),
(6, 'we', 'we', '4'),
(7, 'dhanu', 'dh', '6'),
(8, 'ri', '', '1'),
(9, 'dhanu', 'dh', '6'),
(10, 'we', 'we', '4'),
(11, 'te', 'we', '4'),
(12, 'ri', '', '1'),
(13, 'we', 'we', '3'),
(14, 'ri', '', '1'),
(15, 'dhanu', 'dh', '6'),
(16, 'lfd', 'fmv,d', '7'),
(17, 'huhu', 'hu', '10'),
(18, 'sha', 'sa', '11'),
(19, 'sha', 'sa', '11'),
(20, 'sha', 'sa', '11'),
(21, 'sha', 'sa', '11'),
(22, 'sha', 'sa', '11'),
(23, 'sha', 'sa', '11'),
(24, 'sha', 'sa', '11'),
(25, 'sha', 'sa', '11'),
(26, 'swati', 'sw', '12'),
(27, 'nisha', 'ni', '18');

-- --------------------------------------------------------

--
-- Table structure for table `newitems`
--

CREATE TABLE `newitems` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `mrp` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `sellprice` varchar(100) NOT NULL,
  `purprice` varchar(100) NOT NULL,
  `taxtype` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newitems`
--

INSERT INTO `newitems` (`id`, `name`, `hsn`, `itemcode`, `mrp`, `discount`, `sellprice`, `purprice`, `taxtype`, `tax`, `uid`, `category`) VALUES
(1, 'cement grade 1', '345637', '337840043353', '200', '2', '196.00', '140.80', 'withTax', '28', '4', 'cement'),
(2, 'steal', '34343', '44445555555553', '2500', '12', '2200.00', '1280.00', 'withTax', '28', '4', 'stell'),
(3, 'bricks', '486645', '445123333', '40', '2', '39.20', '31.50', 'withTax', '5', '4', 'bricks');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `SID` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `quotation_date` date NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_fax` varchar(15) NOT NULL,
  `validity_period` varchar(50) NOT NULL,
  `payment_terms` varchar(50) NOT NULL,
  `quotation_no` varchar(50) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`SID`, `customer_name`, `quotation_date`, `customer_email`, `customer_address`, `customer_phone`, `customer_fax`, `validity_period`, `payment_terms`, `quotation_no`, `grand_total`) VALUES
(1, 'sakshi jivani', '2023-12-12', 'jivanisakshi@gmail.com ', '2nd cross ganesh nagar chikodi', '9480930087', '45', '90 days', 'installments ', '17834', 45000000.00),
(2, 'anvik', '2023-12-12', 'anvik@gmail.com', 'Banglore', '7019602428', '90', '90 days', 'full time', '2668', 99999999.99),
(3, 'sakshi jivani', '2023-12-13', 'jivanisakshi@gmail.com ', 'Belgavi ', '768987654', '56', '45', 'full ', '5428', 2356.00),
(4, 'ashwini', '2023-12-13', 'ashu@gmail.com', 'bagalkot', '2353686', '45', '50', 'installation ', '456', 567.00),
(5, 'df', '2023-12-07', 'dfd', 'df', 'df', 'df', 'df', 'df', '', 135.00),
(6, 'rr', '2023-12-15', 'rr', 'rr', 'rr', 'rr', 'rr', 'rr', '', 1936.00),
(7, '3', '2023-12-14', '3', '3', '3', '33', '3', '3', '5429', 1089.00),
(8, 'qqq', '2023-12-21', 'q', 'q', 'q', 'q', 'q', 'q', '5430', 64.00),
(9, '8', '1970-01-01', '8', '88', '8', '8', '8', '8', '5431', 704.00);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `ID` int(11) NOT NULL,
  `SID` int(11) DEFAULT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_description` varchar(255) NOT NULL,
  `estimated_cost` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotation_details`
--

INSERT INTO `quotation_details` (`ID`, `SID`, `project_name`, `project_description`, `estimated_cost`, `qty`, `total`) VALUES
(1, 1, 'Bridge building', 'near belgavi', 3000000.00, 15, 45000000.00),
(2, 2, 'Building project', 'Building a road', 99999999.99, 1, 99999999.99),
(3, 3, 'gdfhj', 'fghk', 2356.00, 1, 2356.00),
(4, 4, 'xvhxg', 'sgdj', 567.00, 1, 567.00),
(6, 8, 'q8', '8', 8.00, 8, 64.00),
(7, 9, '8', '8', 8.00, 88, 704.00);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id` int(10) NOT NULL,
  `org` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `ifscno` varchar(100) NOT NULL,
  `accno` varchar(100) NOT NULL,
  `web` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `gstNumber` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `mobile`, `email`, `id`, `org`, `address`, `password`, `status`, `bankname`, `ifscno`, `accno`, `web`, `cname`, `logo`, `gstNumber`, `state`) VALUES
('ri', '6767', 'ri', 1, 'ri', 'ri', '', '1', 'sbi', '263437645', '4834832492', 'www.ss.com', 'ss construction', '', 'bdyu33647jj', 'karnataka'),
('we', '344', 'we', 3, 'we', 'we', 'we', '1', '', '', '', '', '', '', 'bdyu33647jj', ''),
('te', '9449822310', 'we@gmail.com', 4, 'ibm', 'hear near by                 chikodi, tal: chikodi                          dist: belgaum,               state: karanataka', 'we', '0', '', '', '', '', '', '', 'bdyu33647jj', 'karnataka'),
('dhanu', '9448755660', 'dhanu@gmail.com', 6, 'ibm', 'some where', 'dh', '0', '', '', '', '', '', '', 'bdyu33647jj', 'karnataka'),
('lfd', '3749234', 'm,df', 7, 'vmdf', 'fv,', 'fmv,d', '1', 'df', 'dfd', 'fdg', 'dkfv', 'dkfg', '', 'bdyu33647jj', 'karnataka'),
('', '', '', 8, '', '', '', '0', '', '', '', '', '', '', 'bdyu33647jj', 'karnataka'),
('', '', '', 9, '', '', '', '0', '', '', '', '', '', '', 'bdyu33647jj', 'karnataka'),
('huhu', '76899876', 'huhu@g.com', 10, 'huhu', 'huhu', 'hu', '1', 'huhu', 'huhu', '5678998876', 'SDS.cpm', 'huhu1111', '', 'bdyu33647jj', 'karnataka'),
('sha', '343343', 'sgau', 11, 'ddad', 'bagi', 'sa', '1', '56563', '2323', '344', 'sfa', 'bagi', '', 'bdyu33647jj', 'karnataka'),
('swati', '4355744', 'swa@g.com', 12, 'kle', 'kle', 'sw', '1', 'yesbank', 'yesb676', '5630000625', 'klecet', 'kle', '', 'bdyu33647jj', 'karnataka'),
('dd', '3343', 'riddd', 13, 'dd', 'dd', 'riddddd', '', '[object HTMLInputElement]', '[object HTMLInputElement]', '34', 'd', 'd', '../uploads/e434c4db-6400-491a-9dcf-fa628b12568e.png', 'bdyu33647jj', 'karnataka'),
('gyhk', '6376473465', 'ej94759', 14, 'kjkrot', 'rtkrjtk', '4u54u59', '', '[object HTMLInputElement]', '[object HTMLInputElement]', 'fglfkgldfk', 'dfkdjfkjf', 'jdufiufkd', '../uploads/WhatsApp Image 2023-12-07 at 5.41.50 PM.jpeg', 'bdyu33647jj', 'karnataka'),
('hj', '99898', 'df', 15, 'hj', 'hj', 'hj', '', '[object HTMLInputElement]', '[object HTMLInputElement]', 'hj', 'hj', 'hj', '../uploads/Screenshot 2023-12-07 233736.png', 'hj', 'Maharastra'),
('tanisha', '494859485', 'tanisha@g.com', 16, 'tanisha', 'heare near by', 'ta', '', 'kenra bank', 'kenr234', '4754758474', 'tansha.com', 'tanisalimited', '../uploads/Screenshot 2023-12-14 134318.png', 'hdu445454', 'Andra pradesh'),
('shreya', '45475475', 'shereya@gmail.com', 17, 'shreya', 'near chikodi circle', 'sh', '', 'state bank of india', 'sbi343', '4857847584', 'shreya.com', 'shreyaltc', '../uploads/logo.jpg', 'hgy459845', 'Andra pradesh'),
('nisha', '676789976', 'nisha@g.com', 18, 'nisha', 'kle', 'ni', '1', 'yes bank', 'yesb6767', '657000736', 'nisha.com', 'nishaltd', '../uploads/logo.jpg', 'tdtg6776', 'Karanataka');

-- --------------------------------------------------------

--
-- Table structure for table `vender`
--

CREATE TABLE `vender` (
  `name` varchar(100) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `companyName` varchar(100) NOT NULL,
  `gstNumber` varchar(100) NOT NULL,
  `bankAccount` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `companyAddress` varchar(500) NOT NULL,
  `id` int(10) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `bankifcs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vender`
--

INSERT INTO `vender` (`name`, `number`, `email`, `companyName`, `gstNumber`, `bankAccount`, `type`, `companyAddress`, `id`, `uid`, `state`, `bankifcs`) VALUES
('Riya bagi', '9449822310', 'riya@gmail.com', 'bagi general store', 'KA446HF78958', '87000006265', 'Cement', 'Bagi general store\nbazar road hukkeri\nhukkeri\nbelgaum\nkaranataka', 1, '4', 'karanataka', 'ysb4545'),
('Parshwa bagi', '9449822310', 'parsh@gmail.com', 'Bagi general store', 'KA6346gdfu6', '87000002445', 'bricks', 'bagi general store \nhukkeri\nbelgaum\nkaranataka', 2, '4', 'karanataka', 'sbi6447'),
('nitya', '9164458235', 'nitya@gmail.com', 'nitya prakash', 'uhd6788dhey', '89700000065353', 'Paint', 'hukkeri\nsnk road', 3, '4', 'Punjab', 'rdbi7847'),
('vivek', '4567393749', 'vivek@gmail.com', 'oracal', '475fjfi4885', '4750000036434', 'Steel', 'America\nruicar colony', 4, '4', 'Rajasthan', 'ysb4739'),
('Shailaja', '8749032762', 'shailaja@gmail.com', 'hero moters', '485hdudfh454', '454500003423', 'Wall putti', 'here near by ', 5, '4', 'karanataka', 'rsb4563'),
('preeti', '4584584584', 'preeti@gmail.com', 'birla', 'hdf784df', '585888454', 'Electrician', 'near a beautiful beach', 6, '4', 'Goa', 'sbi67647'),
('d', 'd', 'd', 'd', 'd', 'd', 'Bricks', 'd', 7, '18', 'Karanataka', 'd'),
('riya', '56956', 'riya@g.com', 'riyabagi', '4587125', 'yesb', 'Bricks', 'bagi', 8, '18', 'Maharastra', 'fg745'),
('tanvi', '484556266', 'tanvi@gmail.com', 'tanviltd', '47458dgd8', '481250365', 'Steel', 'belgaum shaunagar', 9, '4', 'Maharastra', '5hdtu'),
('snehil', '48548', 'dfdfdf', 'dfdf', '845235', 'dfdf', 'Steel', 'dfdf', 10, '4', 'Karanataka', '4485');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newitems`
--
ALTER TABLE `newitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vender`
--
ALTER TABLE `vender`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `newitems`
--
ALTER TABLE `newitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vender`
--
ALTER TABLE `vender`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `quotation_details_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `quotations` (`SID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

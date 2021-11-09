-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 04:24 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_agri`
--

-- --------------------------------------------------------

--
-- Table structure for table `abroad`
--

CREATE TABLE `abroad` (
  `id` int(11) NOT NULL,
  `countryName` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `export` double NOT NULL,
  `import` double NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abroad`
--

INSERT INTO `abroad` (`id`, `countryName`, `description`, `export`, `import`, `date`) VALUES
(1, 'India', 'rice , tea ,mango', 260, 0, '16 Feb 2020 12:06 AM'),
(2, 'India', 'rice , tea ,mango', 260, 0, '16 Feb 2020 12:07 AM'),
(3, 'India', 'rice , tea ,mango', 0, 260, '16 Feb 2020 12:27 AM');

-- --------------------------------------------------------

--
-- Table structure for table `abroadsell`
--

CREATE TABLE `abroadsell` (
  `id` int(11) NOT NULL,
  `abroadId` int(11) NOT NULL,
  `cropname` varchar(100) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `amount` double NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abroadsell`
--

INSERT INTO `abroadsell` (`id`, `abroadId`, `cropname`, `quantity`, `price`, `amount`, `date`) VALUES
(1, 2, 'rice', 1, 120, 120, '16 Feb 2020 12:07 AM'),
(2, 2, 'tea', 1, 60, 60, '16 Feb 2020 12:07 AM'),
(3, 2, 'mango', 1, 80, 80, '16 Feb 2020 12:07 AM'),
(4, 3, 'rice', 1, 120, 120, '16 Feb 2020 12:27 AM'),
(5, 3, 'tea', 1, 60, 60, '16 Feb 2020 12:27 AM'),
(6, 3, 'mango', 1, 80, 80, '16 Feb 2020 12:27 AM');

-- --------------------------------------------------------

--
-- Table structure for table `assistcontact`
--

CREATE TABLE `assistcontact` (
  `id` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `warehouse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assistcontact`
--

INSERT INTO `assistcontact` (`id`, `phone`, `mobile`, `email`, `warehouse`) VALUES
(1, 123456789, 123456789, 'mymensingh@gmail.com', 'mymensingh'),
(2, 123456789, 123456789, 'rajshahi@gmail.com', 'rajshahi'),
(3, 123456789, 123456789, 'dhaka@gmail.com', 'dhaka'),
(4, 123456789, 123456789, 'khulna@gmail.com', 'khulna'),
(5, 1312345678, 1312345678, 'rangpur@gmail.com', 'rangpur'),
(6, 1387654321, 1387654321, 'sylhet@gmail.com', 'sylhet'),
(7, 1612345678, 1612345678, 'chittagong@gmail.com', 'chittagong'),
(8, 1511223344, 1511223344, 'barisal@gmail.com', 'barisal');

-- --------------------------------------------------------

--
-- Table structure for table `debitprofit`
--

CREATE TABLE `debitprofit` (
  `id` int(11) NOT NULL,
  `totalBuyingCrop` double NOT NULL,
  `totalSellingCrop` double NOT NULL,
  `totalExpense` double NOT NULL,
  `totalExport` double NOT NULL,
  `totalImport` double NOT NULL,
  `totalSaveAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debitprofit`
--

INSERT INTO `debitprofit` (`id`, `totalBuyingCrop`, `totalSellingCrop`, `totalExpense`, `totalExport`, `totalImport`, `totalSaveAmount`) VALUES
(1, 106400, 23280, 1120, 520, 260, -83980);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `workType` int(11) NOT NULL,
  `salary` double NOT NULL,
  `warehouse` varchar(100) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `workType`, `salary`, `warehouse`, `active`) VALUES
(5, 'bellal', 'bellal', 1, 1000, 'mymensingh', 0),
(6, 'akash', 'akash', 1, 1000, 'mymensingh', 0),
(7, 'shakib', 'shakib', 2, 1000, 'dhaka', 0),
(8, 'korim', 'korim', 1, 100, 'dhaka', 0),
(9, 'bellal', 'bellal', 2, 10000, 'mymensingh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `expanseName` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `amount` double NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `expanseName`, `description`, `amount`, `date`) VALUES
(1, 'Salary', 'Employee salary', 1000, '15 Feb 2020 4:14 PM');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `warehouse` varchar(100) NOT NULL,
  `cropType` varchar(100) NOT NULL,
  `agriLand` double NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`id`, `username`, `password`, `warehouse`, `cropType`, `agriLand`, `address`) VALUES
(1, 'Akbor', 'akbor', 'mymensingh', 'rice', 55, 'nandail'),
(2, 'Ahad', 'ahad', 'mymensingh', 'rice', 150, 'mymensingh'),
(3, 'Fahad', 'fahad', 'dhaka', 'cron', 100, 'Dhaka'),
(4, 'Fahad', 'fahad1', 'dhaka', 'jute', 100, 'Dhaka'),
(5, 'Niloy', 'niloy', 'khulna', 'fish', 70, 'Khulna'),
(6, 'Hasan', 'hasan', 'khulna', 'fish', 60, 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `headquarter`
--

CREATE TABLE `headquarter` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headquarter`
--

INSERT INTO `headquarter` (`id`, `username`, `password`) VALUES
(1, 'bellal', 'bellal');

-- --------------------------------------------------------

--
-- Table structure for table `inputtingproblem`
--

CREATE TABLE `inputtingproblem` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `questionId` int(11) NOT NULL,
  `answerType` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `seen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inputtingproblem`
--

INSERT INTO `inputtingproblem` (`id`, `question`, `answer`, `questionId`, `answerType`, `date`, `seen`) VALUES
(1, 'Eliminates Biological Controls', 'The lack of diversity in a monoculture system eliminates all the functions that nature provides to plants and the soil. It means that there is no range of insect species in a location to ensure that a single population does not get too large and damage too many plants. It means that there are no varieties of plant that naturally provide nutrients to the soil, such as nitrogen-fixing legumes, or ground cover crops that can be slashed and left to improve the nutrient content of the topsoil. It means that there are fewer species of microorganism and bacteria on the soil as there are fewer nutrients available for them to survive on, and it undermines the integrity of the soil by not having a variety of plants with different root depths.', 1, 0, '12 Feb 2020 10:46 PM', 1),
(5, 'More Synthetic Material Use', '', 0, 0, '12 Feb 2020 11:08 PM', 1),
(7, '', 'Having eliminated the natural checks and balances that a diverse ecosystem provides, monoculture production has to find ways to replicate some of them in order to protect the crop (and the profits from it). This inevitably means the use of large quantities of synthetic herbicides, insecticides, bactericides and fertilizers.\nIn attempting to prevent damage to crops by weeds, insects and bacteria; and to provide sufficient nutrients in the soil for the plants to grow, farmers use synthetic chemicals. Not only do these chemicals leave traces on plants that are intended for human consumption and so can enter the food chain, they are also routinely over-used so that a large proportion of the synthetic material remains in the soil, even after the crop has been harvested. Because of its inorganic mature, this material is not processed into organic matter by microorganisms. Rather it leaches through the soil, eventually polluting groundwater supplies, having the knock-on effect of altering ecosystems that may be at great distance from the original location where the chemicals were used. For instance, inorganic fertilizer runoff has contributed greatly to algal blooms in oceans and lakes, the growth of which starves water bodies and the organisms that live in them, of oxygen.\nFurthermore, such chemical substances kill indiscriminately, meaning that all manner of wildlife, beneficial insects and native plants are affected by their use, depleting the vibrancy and diversity of neighboring ecosystems as well.', 5, 0, '12 Feb 2020 11:38 PM', 0),
(8, '', 'In attempting to prevent damage to crops by weeds, insects and bacteria; and to provide sufficient nutrients in the soil for the plants to grow, farmers use synthetic chemicals. Not only do these chemicals leave traces on plants that are intended for human consumption and so can enter the food chain, they are also routinely over-used so that a large proportion of the synthetic material remains in the soil, even after the crop has been harvested. Because of its inorganic mature, this material is not processed into organic matter by microorganisms. Rather it leaches through the soil, eventually polluting groundwater supplies, having the knock-on effect of altering ecosystems that may be at great distance from the original location where the chemicals were used. For instance, inorganic fertilizer runoff has contributed greatly to algal blooms in oceans and lakes, the growth of which starves water bodies and the organisms that live in them, of oxygen.', 5, 0, '12 Feb 2020 11:39 PM', 0),
(9, '', 'In attempting to prevent damage to crops by weeds, insects and bacteria; and to provide sufficient nutrients in the soil for the plants to grow, farmers use synthetic chemicals. Not only do these chemicals leave traces on plants that are intended for human consumption and so can enter the food chain, they are also routinely over-used so that a large proportion of the synthetic material remains in the soil, even after the crop has been harvested. Because of its inorganic mature, this material is not processed into organic matter by microorganisms. Rather it leaches through the soil, eventually polluting groundwater supplies, having the knock-on effect of altering ecosystems that may be at great distance from the original location where the chemicals were used. For instance, inorganic fertilizer runoff has contributed greatly to algal blooms in oceans and lakes, the growth of which starves water bodies and the organisms that live in them, of oxygen.', 5, 0, '12 Feb 2020 11:39 PM', 0),
(10, '', 'It means that there are no varieties of plant that naturally provide nutrients to the soil, such as nitrogen-fixing legumes, or ground cover crops that can be slashed and left to improve the nutrient content of the topsoil. It means that there are fewer species of microorganism and bacteria on the soil as there are fewer nutrients available for them to survive on, and it undermines the integrity of the soil by not having a variety of plants with different root depths.', 1, 0, '12 Feb 2020 11:43 PM', 0),
(11, 'Changing Organism Resistance', '', 0, 0, '12 Feb 2020 11:45 PM', 1),
(12, '', 'Nature is, however, adaptable, and organisms are evolving resistance to these artificial insecticides and herbicides. Of course, the farmers want to continue to protect their crops, so new inorganic methods are continually being developed to combat the â€˜threatâ€™. More and more chemicals are being applied to monoculture crops and, in turn, affecting natural ecosystems detrimentally.', 11, 0, '12 Feb 2020 11:46 PM', 0),
(14, '', 'Of course, the farmers want to continue to protect their crops, so new inorganic methods are continually being developed to combat the â€˜threatâ€™. More and more chemicals are being applied to monoculture crops and, in turn, affecting natural ecosystems detrimentally.', 11, 0, '12 Feb 2020 11:46 PM', 0),
(18, 'Soil Degradation', '', 0, 0, '12 Feb 2020 11:48 PM', 1),
(19, '', 'Besides the negative impact the overuse of chemical fertilizers has on the soil, monocultures are detrimental to soil health in other ways. Ground cover crops are eliminated, meaning there is no natural protection for the soil from erosion by wind and rain. No plants provide leaf litter mulch to replenish the topsoil, which would be eroded anyway. All of this combines to continually degrade the soil, often meaning that it becomes useable for agriculture. In some countries this means that forests are then cleared to provide new agricultural land, starting the damaging cycle all over again.', 18, 0, '12 Feb 2020 11:49 PM', 0),
(20, '', 'No plants provide leaf litter mulch to replenish the topsoil, which would be eroded anyway. All of this combines to continually degrade the soil, often meaning that it becomes useable for agriculture. In some countries this means that forests are then cleared to provide new agricultural land, starting the damaging cycle all over again.', 18, 0, '12 Feb 2020 11:49 PM', 0),
(21, '', '', 0, 0, '13 Feb 2020 9:05 PM', 0),
(22, 'Why are barns often painted red?', '', 0, 0, '15 Feb 2020 12:58 AM', 1),
(23, '', 'If you travel through farm country anywhere in the United States, you will notice that many barns are painted red. Red is the most popular color for barns, and this has been the case for hundreds of years.', 22, 1, '15 Feb 2020 12:59 AM', 1),
(24, '', 'If you travel through farm country anywhere in the United States, you will notice that many barns are painted red. Red is the most popular color for barns, and this has been the case for hundreds of years.', 22, 1, '15 Feb 2020 1:02 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monocrop`
--

CREATE TABLE `monocrop` (
  `id` int(11) NOT NULL,
  `cropName` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `buyingPrice` double NOT NULL,
  `sellingPrice` double NOT NULL,
  `areaForFamous` varchar(200) NOT NULL,
  `totalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monocrop`
--

INSERT INTO `monocrop` (`id`, `cropName`, `description`, `buyingPrice`, `sellingPrice`, `areaForFamous`, `totalAmount`) VALUES
(1, 'rice', 'mono crop food', 100, 120, 'mymensingh', 2500),
(2, 'tea', 'mono crop food', 50, 60, 'sylhet', 1529),
(3, 'mango', 'mono crop food', 70, 80, 'rajshahi', 1629),
(4, 'Corn', 'mono crop food', 100, 120, 'dhaka', 1490),
(5, 'Jute', 'mono crop food', 150, 170, 'gopalgonj', 1490),
(6, 'Jute', 'mono crop food', 130, 160, 'mymensingh', 0),
(7, 'rice', 'mono crop food', 110, 120, 'dhaka', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `retailer`
--

CREATE TABLE `retailer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `wholesallerId` int(11) NOT NULL,
  `warehouseId` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storesolution`
--

CREATE TABLE `storesolution` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `questionId` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehoue_debitprofit`
--

CREATE TABLE `warehoue_debitprofit` (
  `id` int(11) NOT NULL,
  `warehouse` varchar(100) NOT NULL,
  `totalBuyingCrop` double NOT NULL,
  `totalSellingCrop` double NOT NULL,
  `totalExpense` double NOT NULL,
  `totalSaveAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehoue_debitprofit`
--

INSERT INTO `warehoue_debitprofit` (`id`, `warehouse`, `totalBuyingCrop`, `totalSellingCrop`, `totalExpense`, `totalSaveAmount`) VALUES
(1, 'mymensingh', 123400, 23280, 120, -100240),
(2, 'dhaka', 0, 0, 0, 0),
(3, 'khulna', 0, 0, 0, 0),
(4, 'rajshahi', 0, 0, 0, 0),
(5, 'rangpur', 0, 0, 0, 0),
(6, 'sylhet', 0, 0, 0, 0),
(7, 'chittagong', 0, 0, 0, 0),
(8, 'barisal', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id`, `name`, `division`) VALUES
(1, 'Mymensing Warehouse', 'mymensingh'),
(3, 'Dhaka Warehouse', 'dhaka'),
(4, 'Rajshahi Warehouse', 'rajshahi'),
(5, 'Rangpur  Warehouse', 'rangpur'),
(6, 'Sylhet Warehouse', 'sylhet'),
(7, 'Khulna Warehouse', 'khulna'),
(8, 'Chittagong Warehouse', 'chittagong'),
(9, 'Barisal Warehouse', 'barisal');

-- --------------------------------------------------------

--
-- Table structure for table `warehousedetail`
--

CREATE TABLE `warehousedetail` (
  `id` int(11) NOT NULL,
  `warehouse` varchar(100) NOT NULL,
  `farmer` varchar(100) NOT NULL,
  `debit` double NOT NULL,
  `credit` double NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehousedetail`
--

INSERT INTO `warehousedetail` (`id`, `warehouse`, `farmer`, `debit`, `credit`, `date`) VALUES
(2, 'mymensingh', 'Ahad', 0, 0, '13 Feb 2020 2:41 PM'),
(3, 'mymensingh', 'Ahad', 1700, 0, '13 Feb 2020 2:41 PM'),
(4, 'mymensingh', 'Ahad', 1500, 0, '13 Feb 2020 2:45 PM'),
(5, 'mymensingh', 'Ahad', 1550, 0, '13 Feb 2020 2:48 PM'),
(6, 'mymensingh', 'Akbor', 32000, 0, '13 Feb 2020 2:50 PM'),
(7, 'mymensingh', 'bellal', 10000, 0, '13 Feb 2020 2:51 PM'),
(8, 'mymensingh', 'Akbor', 1000, 0, '13 Feb 2020 3:19 PM'),
(9, 'mymensingh', 'Akbor', 20000, 0, '13 Feb 2020 3:20 PM'),
(10, 'mymensingh', 'Akbor', 4100, 0, '13 Feb 2020 3:21 PM'),
(11, 'mymensingh', 'Akbor', 17000, 0, '13 Feb 2020 3:34 PM'),
(12, 'mymensingh', 'Akbor', 101000, 0, '13 Feb 2020 3:36 PM'),
(13, 'mymensingh', 'Akbor', 2200, 0, '13 Feb 2020 3:48 PM'),
(14, 'mymensingh', 'Akbor', 100, 0, '13 Feb 2020 3:49 PM'),
(15, 'mymensingh', 'Akbor', 1000, 0, '13 Feb 2020 3:50 PM'),
(16, 'mymensingh', 'Akbor', 1000, 0, '13 Feb 2020 3:51 PM'),
(17, 'mymensingh', 'Akbor', 100, 0, '13 Feb 2020 3:51 PM'),
(18, 'mymensingh', 'Akbor', 0, 260, '13 Feb 2020 9:49 PM'),
(19, 'mymensingh', 'Akbor', 0, 3700, '13 Feb 2020 9:50 PM'),
(20, 'mymensingh', 'Akbor', 0, 12000, '13 Feb 2020 9:52 PM'),
(21, 'mymensingh', 'Akbor', 1000, 0, '13 Feb 2020 10:38 PM'),
(22, 'mymensingh', 'Akbor', 0, 1200, '13 Feb 2020 10:39 PM');

-- --------------------------------------------------------

--
-- Table structure for table `warehousedetail2`
--

CREATE TABLE `warehousedetail2` (
  `id` int(11) NOT NULL,
  `warehousedetailId` int(11) NOT NULL,
  `cropName` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `buyingprice` double NOT NULL,
  `sellingPrice` double NOT NULL,
  `amount` double NOT NULL,
  `date` varchar(50) NOT NULL,
  `warehouse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehousedetail2`
--

INSERT INTO `warehousedetail2` (`id`, `warehousedetailId`, `cropName`, `quantity`, `buyingprice`, `sellingPrice`, `amount`, `date`, `warehouse`) VALUES
(1, 5, 'rice', 10, 100, 0, 1000, '13 Feb 2020 2:48 PM', 'mymensingh'),
(2, 5, 'tea', 11, 50, 0, 550, '13 Feb 2020 2:48 PM', 'mymensingh'),
(3, 6, 'mango', 100, 70, 0, 7000, '13 Feb 2020 2:50 PM', 'mymensingh'),
(4, 6, 'Corn', 100, 100, 0, 10000, '13 Feb 2020 2:50 PM', 'mymensingh'),
(5, 6, 'Jute', 100, 150, 0, 15000, '13 Feb 2020 2:50 PM', 'mymensingh'),
(6, 7, 'rice', 100, 100, 0, 10000, '13 Feb 2020 2:51 PM', 'mymensingh'),
(7, 8, 'rice', 10, 100, 0, 1000, '13 Feb 2020 3:19 PM', 'mymensingh'),
(8, 9, 'rice', 200, 100, 0, 20000, '13 Feb 2020 3:20 PM', 'mymensingh'),
(9, 10, 'rice', 10, 100, 0, 1000, '13 Feb 2020 3:21 PM', 'mymensingh'),
(10, 10, 'tea', 20, 50, 0, 1000, '13 Feb 2020 3:21 PM', 'mymensingh'),
(11, 10, 'mango', 30, 70, 0, 2100, '13 Feb 2020 3:21 PM', 'mymensingh'),
(12, 11, 'rice', 100, 100, 0, 10000, '13 Feb 2020 3:34 PM', 'mymensingh'),
(13, 11, 'mango', 100, 70, 0, 7000, '13 Feb 2020 3:34 PM', 'mymensingh'),
(14, 12, 'rice', 1010, 100, 0, 101000, '13 Feb 2020 3:36 PM', 'mymensingh'),
(15, 13, 'rice', 10, 100, 0, 1000, '13 Feb 2020 3:48 PM', 'mymensingh'),
(16, 13, 'tea', 10, 50, 0, 500, '13 Feb 2020 3:48 PM', 'mymensingh'),
(17, 13, 'mango', 10, 70, 0, 700, '13 Feb 2020 3:48 PM', 'mymensingh'),
(18, 14, 'rice', 1, 100, 0, 100, '13 Feb 2020 3:49 PM', 'mymensingh'),
(19, 15, 'rice', 10, 100, 0, 1000, '13 Feb 2020 3:50 PM', 'mymensingh'),
(20, 16, 'rice', 10, 100, 0, 1000, '13 Feb 2020 3:51 PM', 'mymensingh'),
(21, 17, 'rice', 1, 100, 0, 100, '13 Feb 2020 3:51 PM', 'mymensingh'),
(22, 18, 'rice', 1, 0, 120, 120, '13 Feb 2020 9:49 PM', 'mymensingh'),
(23, 18, 'tea', 1, 0, 60, 60, '13 Feb 2020 9:49 PM', 'mymensingh'),
(24, 18, 'mango', 1, 0, 80, 80, '13 Feb 2020 9:49 PM', 'mymensingh'),
(25, 19, 'mango', 10, 0, 80, 800, '13 Feb 2020 9:50 PM', 'mymensingh'),
(26, 19, 'Corn', 10, 0, 120, 1200, '13 Feb 2020 9:50 PM', 'mymensingh'),
(27, 19, 'Jute', 10, 0, 170, 1700, '13 Feb 2020 9:50 PM', 'mymensingh'),
(28, 19, 'rice', 51, 0, 120, 6120, '13 Feb 2020 9:52 PM', 'mymensingh'),
(29, 20, 'rice', 100, 0, 120, 12000, '13 Feb 2020 9:52 PM', 'mymensingh'),
(30, 21, 'rice', 10, 100, 0, 1000, '13 Feb 2020 10:38 PM', 'mymensingh'),
(31, 22, 'rice', 10, 0, 120, 1200, '13 Feb 2020 10:39 PM', 'mymensingh');

-- --------------------------------------------------------

--
-- Table structure for table `warehouseexpense`
--

CREATE TABLE `warehouseexpense` (
  `id` int(11) NOT NULL,
  `expenseName` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `amount` double NOT NULL,
  `warehouse` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouseexpense`
--

INSERT INTO `warehouseexpense` (`id`, `expenseName`, `description`, `amount`, `warehouse`, `date`) VALUES
(1, 'Salary', 'employee salary...\nwarehouse worker', 15000, 'dhaka', '15 Feb 2020 3:43 PM'),
(2, 'salary', 'Employee salary..\nwarehouse worker.', 15000, 'mymensingh', '15 Feb 2020 3:44 PM'),
(3, 'Current bill', 'Warehouse current bill..', 120, 'mymensingh', '15 Feb 2020 3:58 PM');

-- --------------------------------------------------------

--
-- Table structure for table `wholesaller`
--

CREATE TABLE `wholesaller` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `warehouse` varchar(50) NOT NULL,
  `cropId` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `salary` double NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wholesaller`
--

INSERT INTO `wholesaller` (`id`, `username`, `password`, `warehouse`, `cropId`, `date`, `salary`, `active`) VALUES
(2, 'rohim', 'rohim', 'mymensingh', 1, '', 100, 0),
(3, 'korim', 'korim', 'mymensingh', 1, '', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `workstation`
--

CREATE TABLE `workstation` (
  `id` int(11) NOT NULL,
  `employeeId` varchar(50) NOT NULL,
  `Mymensingh` int(11) NOT NULL,
  `Dhaka` int(11) NOT NULL,
  `Rajshahi` int(11) NOT NULL,
  `Rangpur` int(11) NOT NULL,
  `Sylhet` int(11) NOT NULL,
  `Khulna` int(11) NOT NULL,
  `Chittagong` int(11) NOT NULL,
  `Barisal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workstation`
--

INSERT INTO `workstation` (`id`, `employeeId`, `Mymensingh`, `Dhaka`, `Rajshahi`, `Rangpur`, `Sylhet`, `Khulna`, `Chittagong`, `Barisal`) VALUES
(1, 'bellal', 1, 0, 0, 0, 0, 0, 0, 0),
(2, 'akash', 1, 0, 0, 0, 0, 0, 0, 0),
(3, 'shakib', 1, 0, 0, 0, 0, 0, 0, 0),
(4, 'korim', 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abroad`
--
ALTER TABLE `abroad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abroadsell`
--
ALTER TABLE `abroadsell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assistcontact`
--
ALTER TABLE `assistcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debitprofit`
--
ALTER TABLE `debitprofit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headquarter`
--
ALTER TABLE `headquarter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inputtingproblem`
--
ALTER TABLE `inputtingproblem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monocrop`
--
ALTER TABLE `monocrop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retailer`
--
ALTER TABLE `retailer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storesolution`
--
ALTER TABLE `storesolution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehoue_debitprofit`
--
ALTER TABLE `warehoue_debitprofit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehousedetail`
--
ALTER TABLE `warehousedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehousedetail2`
--
ALTER TABLE `warehousedetail2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouseexpense`
--
ALTER TABLE `warehouseexpense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wholesaller`
--
ALTER TABLE `wholesaller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workstation`
--
ALTER TABLE `workstation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abroad`
--
ALTER TABLE `abroad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `abroadsell`
--
ALTER TABLE `abroadsell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `assistcontact`
--
ALTER TABLE `assistcontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `debitprofit`
--
ALTER TABLE `debitprofit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `headquarter`
--
ALTER TABLE `headquarter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inputtingproblem`
--
ALTER TABLE `inputtingproblem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `monocrop`
--
ALTER TABLE `monocrop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `retailer`
--
ALTER TABLE `retailer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storesolution`
--
ALTER TABLE `storesolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehoue_debitprofit`
--
ALTER TABLE `warehoue_debitprofit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `warehousedetail`
--
ALTER TABLE `warehousedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `warehousedetail2`
--
ALTER TABLE `warehousedetail2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `warehouseexpense`
--
ALTER TABLE `warehouseexpense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wholesaller`
--
ALTER TABLE `wholesaller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `workstation`
--
ALTER TABLE `workstation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

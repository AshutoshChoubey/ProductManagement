-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2020 at 02:12 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcm`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test dep', 'test dep', 0, '2020-10-17 08:32:38', '2020-10-17 08:32:38', NULL),
(2, 'dep2', 'dep', 0, '2020-10-17 08:50:14', '2020-10-17 08:50:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dep_consume_reports`
--

CREATE TABLE `dep_consume_reports` (
  `id` int(155) NOT NULL,
  `department_id` int(155) DEFAULT NULL,
  `department_name` varchar(155) DEFAULT NULL,
  `price` double(155,2) DEFAULT NULL,
  `user_id` int(155) DEFAULT NULL,
  `valuation_id` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dep_pur_reports`
--

CREATE TABLE `dep_pur_reports` (
  `id` int(155) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(155) DEFAULT NULL,
  `price` double(11,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `valuation_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dep_pur_reports`
--

INSERT INTO `dep_pur_reports` (`id`, `department_id`, `department_name`, `price`, `user_id`, `valuation_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'test dep', 100.00, 1, 1, '2020-10-17 09:10:11', '2020-10-17 09:10:11', NULL),
(2, 2, 'dep2', 120.75, 1, 1, '2020-10-17 09:10:11', '2020-10-17 09:10:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dep_stock_reports`
--

CREATE TABLE `dep_stock_reports` (
  `id` int(155) NOT NULL,
  `department_id` int(155) DEFAULT NULL,
  `department_name` varchar(155) DEFAULT NULL,
  `price` double(155,2) DEFAULT NULL,
  `user_id` int(155) DEFAULT NULL,
  `valuation_id` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dep_stock_reports`
--

INSERT INTO `dep_stock_reports` (`id`, `department_id`, `department_name`, `price`, `user_id`, `valuation_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'test dep', 300.00, 1, 1, '2020-10-17 09:10:11', '2020-10-17 09:10:11', NULL),
(2, 2, 'dep2', 330.75, 1, 1, '2020-10-17 09:10:11', '2020-10-17 09:10:11', NULL),
(3, 1, 'test dep', 709.02, 1, 2, '2020-10-21 13:50:12', '2020-10-21 13:50:12', NULL),
(4, 2, 'dep2', 15589260153.74, 1, 2, '2020-10-21 13:50:12', '2020-10-21 13:50:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `indents`
--

CREATE TABLE `indents` (
  `id` int(155) NOT NULL,
  `indent_month` varchar(155) DEFAULT NULL,
  `indent_discription` varchar(155) DEFAULT NULL,
  `indent_department` varchar(155) NOT NULL,
  `indent_department_name` varchar(155) NOT NULL,
  `is_purchase` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 =>no,1=>yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(155) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indents`
--

INSERT INTO `indents` (`id`, `indent_month`, `indent_discription`, `indent_department`, `indent_department_name`, `is_purchase`, `created_at`, `updated_at`, `created_by`, `deleted_at`) VALUES
(1, 'February', 'sdf', '1', 'test dep', 1, '2020-10-17 08:34:23', '2020-10-17 08:38:10', 1, NULL),
(2, 'March', 'asd', '2', 'dep2', 1, '2020-10-17 08:55:29', '2020-10-17 09:00:41', 1, NULL),
(3, 'February', 'sdasd', '2', 'dep2', 1, '2020-10-17 11:56:49', '2020-10-17 11:58:24', 1, NULL),
(4, 'January', NULL, '2', 'dep2', 1, '2020-10-17 12:04:09', '2020-10-17 12:05:53', 1, NULL),
(5, NULL, NULL, '1', 'test dep', 1, '2020-10-17 12:06:32', '2020-10-17 12:24:15', 1, NULL),
(6, 'March3', 'sd', '1', 'test dep', 0, '2020-10-17 12:30:11', '2020-10-17 12:48:10', 1, NULL),
(7, 'March', 'sdfsdf', '2', 'dep2', 0, '2020-10-21 13:45:44', '2020-10-21 13:45:44', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `indent_details`
--

CREATE TABLE `indent_details` (
  `id` int(155) NOT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `product_name` varchar(155) NOT NULL,
  `product_id` int(155) DEFAULT NULL,
  `speciaman` varchar(155) DEFAULT NULL,
  `make` varchar(155) DEFAULT NULL,
  `quantity` double(155,2) NOT NULL DEFAULT 0.00,
  `purpose` varchar(155) DEFAULT NULL,
  `bf_stock` varchar(155) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `indent_id` int(155) DEFAULT NULL,
  `purchase_quantity` int(155) NOT NULL DEFAULT 0,
  `is_purchase_complete` int(11) NOT NULL DEFAULT 0 COMMENT '1=>Yes Purchase Completed',
  `department` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indent_details`
--

INSERT INTO `indent_details` (`id`, `product_code`, `product_name`, `product_id`, `speciaman`, `make`, `quantity`, `purpose`, `bf_stock`, `remarks`, `indent_id`, `purchase_quantity`, `is_purchase_complete`, `department`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TES/PRO/1', 'Prod1', 1, 'er', 'sony', 10.00, 'test', '0', 'test', 1, 10, 1, 1, '2020-10-17 08:34:24', '2020-10-17 08:38:10', NULL),
(2, 'DEP/TES/2', 'test dep2', 2, 'df', 'redmi', 11.00, 'asd', '0', 'asd', 2, 11, 1, 2, '2020-10-17 08:55:30', '2020-10-17 09:00:41', NULL),
(3, 'DEP/TES/2', 'test dep2', 2, 'df', 'redmi', 12.00, 'asdasd', '21', 'asd', 3, 12, 1, 2, '2020-10-17 11:56:49', '2020-10-17 11:58:24', NULL),
(4, 'DEP/TES/2', 'test dep2', 2, 'df', 'redmi', 20.00, '40', '45', NULL, 4, 20, 1, 2, '2020-10-17 12:04:10', '2020-10-17 12:05:53', NULL),
(5, 'TES/PRO/1', 'Prod1', 1, 'er', 'sony', 20.00, 's', '30', 'asasasd', 5, 20, 1, 1, '2020-10-17 12:06:32', '2020-10-17 12:24:15', NULL),
(6, 'TES/PRO/1', 'Prod1', 1, 'er', 'sony', 23432.00, 'sdfsd', '50', 'asdf', 6, 2, 0, 1, '2020-10-17 12:30:12', '2020-10-17 12:56:43', NULL),
(7, 'DEP/TES/2', 'test dep2', 2, 'df', 'redmi', 23.33, '232', '65', '123123', 7, 21, 0, 2, '2020-10-21 13:45:45', '2020-10-21 13:46:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(155) NOT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `product_name` varchar(155) NOT NULL,
  `product_department` varchar(155) DEFAULT NULL,
  `product_department_Name` varchar(155) DEFAULT NULL,
  `product_specification` text DEFAULT NULL,
  `product_type` varchar(155) DEFAULT NULL,
  `product_unit` varchar(155) DEFAULT NULL,
  `product_color` varchar(55) DEFAULT NULL,
  `product_hsn` varchar(155) DEFAULT NULL,
  `product_specimen` varchar(155) DEFAULT NULL,
  `product_make` varchar(155) DEFAULT NULL,
  `place` varchar(155) DEFAULT NULL,
  `product_igst` double(155,2) NOT NULL DEFAULT 0.00,
  `product_cgst` double(155,2) NOT NULL DEFAULT 0.00,
  `product_sgst` double(155,2) NOT NULL DEFAULT 0.00,
  `product_gst` double(155,2) NOT NULL DEFAULT 0.00,
  `stock_in` double(155,2) NOT NULL DEFAULT 0.00,
  `stock_out` double(155,2) NOT NULL DEFAULT 0.00,
  `available_stock` double(155,2) NOT NULL DEFAULT 0.00,
  `opening_stock` double(155,2) NOT NULL DEFAULT 0.00,
  `closing_stok` double(155,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) DEFAULT 0,
  `created_by` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_department`, `product_department_Name`, `product_specification`, `product_type`, `product_unit`, `product_color`, `product_hsn`, `product_specimen`, `product_make`, `place`, `product_igst`, `product_cgst`, `product_sgst`, `product_gst`, `stock_in`, `stock_out`, `available_stock`, `opening_stock`, `closing_stok`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TES/PRO/1', 'Prod1', '1', 'test dep', 'test', 'Product Type', 'kg', 'red', '4534', 'er', 'sony', 'rack1', 0.00, 1.00, 0.00, 1.00, 52.00, 0.00, 52.00, 13.50, 15.00, 0, NULL, '2020-10-17 08:33:48', '2020-10-17 12:56:43', NULL),
(2, 'DEP/TES/2', 'test dep2', '2', 'dep2', 'sdf', 'Product Type', 'kg', 'red', '345sdf', 'df', 'redmi', 'rack2', 1.00, 3.00, 1.00, 5.00, 85.90, 0.00, 85.90, 172839516.09, 129.19, 0, NULL, '2020-10-17 08:54:18', '2020-10-21 13:49:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_uses`
--

CREATE TABLE `product_uses` (
  `id` int(155) NOT NULL,
  `use_product_code` varchar(155) DEFAULT NULL,
  `use_product_name` varchar(155) DEFAULT NULL,
  `use_pro_id` int(155) DEFAULT NULL,
  `use_dep_name` varchar(155) DEFAULT NULL,
  `use_dep_code` varchar(155) DEFAULT NULL,
  `use_pro_specif` varchar(155) DEFAULT NULL,
  `use_pro_type` varchar(155) DEFAULT NULL,
  `use_pro_place` varchar(155) DEFAULT NULL,
  `use_requisition_id` int(155) DEFAULT NULL,
  `use_requisition_discription` varchar(155) DEFAULT NULL,
  `use_requisition_detail_id` int(155) DEFAULT NULL,
  `use_pro_opening` double(155,2) DEFAULT NULL,
  `use_pro_closing` double(155,2) DEFAULT NULL,
  `use_pro_price` double(155,2) DEFAULT NULL,
  `use_pro_quanity` double(155,3) DEFAULT NULL,
  `use_quanity` double(155,3) DEFAULT NULL,
  `use_requisition_month` varchar(155) DEFAULT NULL,
  `use_date` datetime DEFAULT NULL,
  `created_by` int(155) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(155) NOT NULL,
  `pur_product_code` varchar(155) DEFAULT NULL,
  `pur_product_name` varchar(155) DEFAULT NULL,
  `pur_pro_id` int(155) DEFAULT NULL,
  `pur_dep_name` varchar(155) DEFAULT NULL,
  `pur_dep_code` varchar(155) DEFAULT NULL,
  `pur_pro_specif` varchar(155) DEFAULT NULL,
  `pur_pro_type` varchar(155) DEFAULT NULL,
  `pur_pro_place` varchar(155) DEFAULT NULL,
  `pur_quanity` double(155,3) DEFAULT NULL,
  `pur_indent_detail_id` int(155) DEFAULT NULL,
  `pur_indent_id` int(155) DEFAULT NULL,
  `pur_indent_discription` varchar(155) DEFAULT NULL,
  `pur_pro_opening` double(155,2) DEFAULT NULL,
  `pur_pro_closing` double(155,2) DEFAULT NULL,
  `pur_pro_price` double(155,2) DEFAULT NULL,
  `pur_product_gst` double(155,2) DEFAULT NULL,
  `pur_product_igst` double(155,2) DEFAULT NULL,
  `pur_product_sgst` double(155,2) DEFAULT NULL,
  `pur_product_cgst` double(155,2) DEFAULT NULL,
  `pur_pro_quanity` double(155,3) DEFAULT NULL,
  `pur_indent_month` varchar(155) DEFAULT NULL,
  `pur_date` datetime DEFAULT NULL,
  `pur_supplierName` varchar(155) DEFAULT NULL,
  `pur_purchaseInvoie` varchar(155) DEFAULT NULL,
  `pur_supplierId` int(155) DEFAULT NULL,
  `created_by` int(155) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `entry_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `pur_product_code`, `pur_product_name`, `pur_pro_id`, `pur_dep_name`, `pur_dep_code`, `pur_pro_specif`, `pur_pro_type`, `pur_pro_place`, `pur_quanity`, `pur_indent_detail_id`, `pur_indent_id`, `pur_indent_discription`, `pur_pro_opening`, `pur_pro_closing`, `pur_pro_price`, `pur_product_gst`, `pur_product_igst`, `pur_product_sgst`, `pur_product_cgst`, `pur_pro_quanity`, `pur_indent_month`, `pur_date`, `pur_supplierName`, `pur_purchaseInvoie`, `pur_supplierId`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`, `entry_date`) VALUES
(1, 'TES/PRO/1', 'Prod1', 1, 'test dep', '1', 'test', 'Product Type', 'rack1', 10.000, 1, 1, 'sdf', 10.00, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 20.000, 'February', '2020-10-16 00:00:00', 'test supler', 'df34', 1, NULL, 0, '2020-10-17 08:38:10', '2020-10-17 08:38:10', NULL, '2020-10-20 21:10:14'),
(2, 'DEP/TES/2', 'test dep2', 2, 'dep2', '2', 'asd', 'Product Type', 'rack2', 10.000, 2, 2, 'asd', 10.00, 10.00, 10.00, 5.00, 1.00, 1.00, 3.00, 10.000, 'March', '2020-10-16 00:00:00', 'test supler', 'sdf678', 1, NULL, 0, '2020-10-17 08:59:37', '2020-10-17 08:59:37', NULL, '2020-10-20 21:10:14'),
(3, 'DEP/TES/2', 'test dep2', 2, 'dep2', '2', 'asd', 'Product Type', 'rack2', 1.000, 2, 2, 'asd', 15.00, 10.00, 20.00, 5.00, 1.00, 1.00, 3.00, 20.000, 'March', '2020-10-16 00:00:00', 'test supler', 'zdf345', 1, NULL, 0, '2020-10-17 09:00:41', '2020-10-17 09:00:41', NULL, '2020-10-20 21:10:14'),
(4, 'DEP/TES/2', 'test dep2', 2, 'dep2', '2', 'asd', 'Product Type', 'rack2', 12.000, 3, 3, 'sdasd', 18.75, 17.50, 20.00, 5.00, 1.00, 1.00, 3.00, 33.000, 'February', '2020-10-17 17:26:49', 'test supler', '20', 1, NULL, 0, '2020-10-17 11:58:24', '2020-10-17 11:58:24', NULL, '2020-10-20 21:10:14'),
(5, 'DEP/TES/2', 'test dep2', 2, 'dep2', '2', NULL, 'Product Type', 'rack2', 20.000, 4, 4, NULL, 24.38, 18.75, 30.00, 5.00, 1.00, 1.00, 3.00, 45.000, 'January', '2020-10-17 17:34:10', 'test supler', 'a', 1, NULL, 0, '2020-10-17 12:05:53', '2020-10-17 12:05:53', NULL, '2020-10-20 21:10:14'),
(6, 'TES/PRO/1', 'Prod1', 1, 'test dep', '1', 'asasasd', 'Product Type', 'rack1', 20.000, 5, 5, NULL, 15.00, 10.00, 20.00, 0.00, 0.00, 0.00, 0.00, 30.000, NULL, '2020-10-16 00:00:00', 'test supler', '79', 1, NULL, 0, '2020-10-17 12:24:15', '2020-10-17 12:24:15', NULL, '2020-10-20 21:10:14'),
(7, 'TES/PRO/1', 'Prod1', 1, 'test dep', '1', 'asdf', 'Product Type', 'rack1', 2.000, 6, 6, 'sd', 13.50, 15.00, 12.00, 1.00, 0.00, 0.00, 1.00, 50.000, 'March3', '2020-10-16 00:00:00', 'test supler', 'as', 1, NULL, 0, '2020-10-17 12:56:43', '2020-10-17 12:56:43', NULL, '2020-10-20 21:10:14'),
(8, 'DEP/TES/2', 'test dep2', 2, 'dep2', '2', '123123', 'Product Type', 'rack2', 20.567, 7, 7, 'sdfsdf', 129.19, 24.38, 234.00, 5.00, 1.00, 1.00, 3.00, 65.000, 'March', '2020-10-06 00:00:00', 'test supler', 'sd45', 1, NULL, 0, '2020-10-21 13:46:28', '2020-10-21 13:46:28', NULL, '2020-10-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

CREATE TABLE `requisitions` (
  `id` int(155) NOT NULL,
  `requisition_month` varchar(155) DEFAULT NULL,
  `issued_materiaL_to` varchar(155) DEFAULT NULL,
  `received_by` varchar(155) DEFAULT NULL,
  `store_incharge` varchar(155) DEFAULT NULL,
  `plant_incharge` varchar(155) DEFAULT NULL,
  `requisition_discription` varchar(155) DEFAULT NULL,
  `plant_name` varchar(155) DEFAULT NULL,
  `requisition_department` varchar(155) DEFAULT NULL,
  `requisition_department_name` varchar(155) DEFAULT NULL,
  `is_issued` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 =>no,1=>yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(155) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requisition_details`
--

CREATE TABLE `requisition_details` (
  `id` int(155) NOT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `product_name` varchar(155) NOT NULL,
  `product_id` int(155) DEFAULT NULL,
  `speciaman` varchar(155) DEFAULT NULL,
  `make` varchar(155) DEFAULT NULL,
  `quantity` double(155,2) NOT NULL DEFAULT 0.00,
  `purpose` varchar(155) DEFAULT NULL,
  `bf_stock` varchar(155) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `requisition_id` int(155) DEFAULT NULL,
  `department` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saved_current_stocks`
--

CREATE TABLE `saved_current_stocks` (
  `id` int(155) NOT NULL,
  `product_id` int(155) NOT NULL,
  `valuation_id` int(155) NOT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `product_name` varchar(155) NOT NULL,
  `product_department` varchar(155) DEFAULT NULL,
  `product_department_Name` varchar(155) DEFAULT NULL,
  `product_specification` text DEFAULT NULL,
  `product_type` varchar(155) DEFAULT NULL,
  `product_unit` varchar(155) DEFAULT NULL,
  `product_color` varchar(55) DEFAULT NULL,
  `product_hsn` varchar(155) DEFAULT NULL,
  `product_specimen` varchar(155) DEFAULT NULL,
  `product_make` varchar(155) DEFAULT NULL,
  `place` varchar(155) DEFAULT NULL,
  `product_igst` double(155,2) NOT NULL DEFAULT 0.00,
  `product_cgst` double(155,2) NOT NULL DEFAULT 0.00,
  `product_sgst` double(155,2) NOT NULL DEFAULT 0.00,
  `product_gst` double(155,2) NOT NULL DEFAULT 0.00,
  `stock_in` double(155,2) NOT NULL DEFAULT 0.00,
  `stock_out` double(155,2) NOT NULL DEFAULT 0.00,
  `available_stock` double(155,2) NOT NULL DEFAULT 0.00,
  `opening_stock` double(155,2) NOT NULL DEFAULT 0.00,
  `closing_stok` double(155,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) DEFAULT 0,
  `created_by` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saved_current_stocks`
--

INSERT INTO `saved_current_stocks` (`id`, `product_id`, `valuation_id`, `product_code`, `product_name`, `product_department`, `product_department_Name`, `product_specification`, `product_type`, `product_unit`, `product_color`, `product_hsn`, `product_specimen`, `product_make`, `place`, `product_igst`, `product_cgst`, `product_sgst`, `product_gst`, `stock_in`, `stock_out`, `available_stock`, `opening_stock`, `closing_stok`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'TES/PRO/1', 'Prod1', '1', 'test dep', 'test', NULL, 'kg', 'red', '4534', 'er', 'sony', 'rack1', 0.00, 0.00, 0.00, 0.00, 30.00, 0.00, 30.00, 10.00, 10.00, 0, NULL, '2020-10-17 09:10:11', '2020-10-17 09:10:11', NULL),
(2, 2, 1, 'DEP/TES/2', 'test dep2', '2', 'dep2', 'sdf', NULL, 'kg', 'red', '345sdf', 'df', 'redmi', 'rack2', 1.00, 3.00, 1.00, 5.00, 21.00, 0.00, 21.00, 15.00, 10.00, 0, NULL, '2020-10-17 09:10:11', '2020-10-17 09:10:11', NULL),
(3, 1, 2, 'TES/PRO/1', 'Prod1', '1', 'test dep', 'test', NULL, 'kg', 'red', '4534', 'er', 'sony', 'rack1', 0.00, 1.00, 0.00, 1.00, 52.00, 0.00, 52.00, 13.50, 15.00, 0, NULL, '2020-10-21 13:50:12', '2020-10-21 13:50:12', NULL),
(4, 2, 2, 'DEP/TES/2', 'test dep2', '2', 'dep2', 'sdf', NULL, 'kg', 'red', '345sdf', 'df', 'redmi', 'rack2', 1.00, 3.00, 1.00, 5.00, 85.90, 0.00, 85.90, 172839516.09, 129.19, 0, NULL, '2020-10-21 13:50:12', '2020-10-21 13:50:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `save_valuations`
--

CREATE TABLE `save_valuations` (
  `id` int(155) NOT NULL,
  `report_name` varchar(155) DEFAULT NULL,
  `report_description` text DEFAULT NULL,
  `consumeTotal` double(155,2) DEFAULT NULL,
  `purchaseTotal` double(155,2) DEFAULT NULL,
  `stockTotal` double(155,2) DEFAULT NULL,
  `user_id` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `todate` datetime DEFAULT NULL,
  `fromdate` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `save_valuations`
--

INSERT INTO `save_valuations` (`id`, `report_name`, `report_description`, `consumeTotal`, `purchaseTotal`, `stockTotal`, `user_id`, `created_at`, `todate`, `fromdate`, `updated_at`, `deleted_at`) VALUES
(1, 'oct', 'asd', 0.00, 220.75, 630.75, 1, '2020-10-17 09:10:11', '2020-10-17 00:00:00', '2020-10-15 00:00:00', '2020-10-17 09:10:11', NULL),
(2, '34', 'asdas', 0.00, 0.00, 15589260862.76, 1, '2020-10-21 13:50:12', '2020-10-21 00:00:00', '2020-10-20 00:00:00', '2020-10-21 13:50:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob_num` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_supplier_balance` double(100,2) DEFAULT NULL,
  `total_supplier_credit` double(100,2) DEFAULT NULL,
  `total_supplier_debit` double(100,2) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `gstin` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `user_id`, `supplier_name`, `mob_num`, `address`, `email`, `total_supplier_balance`, `total_supplier_credit`, `total_supplier_debit`, `email_verified_at`, `gstin`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'test supler', '4444444444', 'sdaes', 'ashu@ashu.com', NULL, NULL, NULL, NULL, '34asd', 1, NULL, '2020-10-17 08:35:40', '2020-10-17 08:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_debit_logs`
--

CREATE TABLE `supplier_debit_logs` (
  `id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `supplier_id` int(100) NOT NULL,
  `purchase_id` int(100) DEFAULT NULL,
  `debit_amount` float(100,2) DEFAULT NULL,
  `total_amount` float(100,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table 14`
--

CREATE TABLE `table 14` (
  `COL 1` varchar(1) DEFAULT NULL,
  `COL 2` varchar(8) DEFAULT NULL,
  `COL 3` varchar(50) DEFAULT NULL,
  `COL 4` varchar(1) DEFAULT NULL,
  `COL 5` varchar(13) DEFAULT NULL,
  `COL 6` varchar(86) DEFAULT NULL,
  `COL 7` varchar(10) DEFAULT NULL,
  `COL 8` varchar(10) DEFAULT NULL,
  `COL 9` varchar(10) DEFAULT NULL,
  `COL 10` varchar(10) DEFAULT NULL,
  `COL 11` varchar(10) DEFAULT NULL,
  `COL 12` varchar(25) DEFAULT NULL,
  `COL 13` varchar(17) DEFAULT NULL,
  `COL 14` varchar(1) DEFAULT NULL,
  `COL 15` varchar(1) DEFAULT NULL,
  `COL 16` varchar(1) DEFAULT NULL,
  `COL 17` varchar(1) DEFAULT NULL,
  `COL 18` varchar(7) DEFAULT NULL,
  `COL 19` varchar(1) DEFAULT NULL,
  `COL 20` varchar(7) DEFAULT NULL,
  `COL 21` varchar(8) DEFAULT NULL,
  `COL 22` varchar(1) DEFAULT NULL,
  `COL 23` varchar(1) DEFAULT NULL,
  `COL 24` varchar(10) DEFAULT NULL,
  `COL 25` varchar(10) DEFAULT NULL,
  `COL 26` varchar(10) DEFAULT NULL,
  `COL 27` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashutosh Kumar Choubey', 'admin@admin.com', NULL, '$2y$10$lGog6IupIkJrLPklajdm5.Yk983XJ7nDzuAsiHkSf8V9vgsxEohD6', NULL, '2019-03-29 23:34:56', '2019-03-29 23:34:56'),
(2, 'ashtosh', 'ajaylenka84@gmail.com', NULL, '$2y$10$d4qhdMlcI4FEgaidt1qNlukbdHWNs64nk/ppEVIvCqrtV/4366CS.', NULL, '2019-06-08 12:30:45', '2019-06-08 12:30:45'),
(3, 'BCM', 'bcm@bcm.com', NULL, '$2y$10$T83dXGUoeiu7fEH6frnqhOoCvEaBNAdtkn3wsX.vBjJSzYWRb0Elm', NULL, '2019-06-08 12:37:30', '2019-06-08 12:37:30'),
(4, 'ashutosh', 'ashu@ashu.com', NULL, '$2y$10$GXz.IKtvIgKj50VFM520POoeO1qN/34X8J3azRQOnvYqsinHzz01m', NULL, '2019-07-06 10:38:15', '2019-07-06 10:38:15'),
(5, 'Worldgyan', 'worldgyan@admin.com', NULL, '$2y$10$RD1Hpn.RrAhHfkWv59I77OzS0ag/Zq7hvt9hjbdvvIh5NjfomvtMi', NULL, '2019-07-07 12:27:46', '2019-07-07 12:27:46'),
(6, 'worldgyan', 'worldgyan@worldgyan.com', NULL, '$2y$10$DD8amDG.TzjGp.NjK3GFtuYOn.XJqKwimfTnslhsz5lgh1O0nlPJS', NULL, '2019-10-21 18:00:52', '2019-10-21 18:00:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dep_consume_reports`
--
ALTER TABLE `dep_consume_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dep_pur_reports`
--
ALTER TABLE `dep_pur_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dep_stock_reports`
--
ALTER TABLE `dep_stock_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indents`
--
ALTER TABLE `indents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indent_details`
--
ALTER TABLE `indent_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_uses`
--
ALTER TABLE `product_uses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisition_details`
--
ALTER TABLE `requisition_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_current_stocks`
--
ALTER TABLE `saved_current_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save_valuations`
--
ALTER TABLE `save_valuations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_debit_logs`
--
ALTER TABLE `supplier_debit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dep_consume_reports`
--
ALTER TABLE `dep_consume_reports`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dep_pur_reports`
--
ALTER TABLE `dep_pur_reports`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dep_stock_reports`
--
ALTER TABLE `dep_stock_reports`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `indents`
--
ALTER TABLE `indents`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `indent_details`
--
ALTER TABLE `indent_details`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_uses`
--
ALTER TABLE `product_uses`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requisition_details`
--
ALTER TABLE `requisition_details`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_current_stocks`
--
ALTER TABLE `saved_current_stocks`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `save_valuations`
--
ALTER TABLE `save_valuations`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_debit_logs`
--
ALTER TABLE `supplier_debit_logs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

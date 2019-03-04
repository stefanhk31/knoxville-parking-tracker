-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2019 at 04:44 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `id` int(11) NOT NULL,
  `num_of_vehicle` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `garage` varchar(100) NOT NULL,
  `occupant_at_time` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `num_of_vehicle`, `type`, `garage`, `occupant_at_time`, `timestamp`) VALUES
(1, 0, 'occupancy', 'Locust Street Garage', '2018-08-06 00:00:00', '2019-03-03 14:55:14'),
(2, 129, 'occupancy', 'Locust Street Garage', '2018-08-08 15:00:00', '2019-03-03 14:57:48'),
(3, 0, 'vacancy', 'Locust Street Garage', '2018-08-06 00:00:00', '2019-03-03 14:57:48'),
(4, 122, 'vacancy', 'Locust Street Garage', '2018-08-08 15:00:00', '2019-03-03 15:00:14'),
(5, 123, 'occupancy', 'Main Avenue Garage', '2018-08-06 00:00:00', '2019-03-03 15:00:14'),
(6, 132, 'occupancy', 'Main Avenue Garage', '2018-08-08 15:00:00', '2019-03-03 15:02:12'),
(7, 127, 'vacancy', 'Main Avenue Garage', '2018-08-06 01:00:00', '2019-03-03 15:02:12'),
(8, 118, 'vacancy', 'Main Avenue', '2018-08-08 16:00:00', '2019-03-03 15:04:07'),
(9, 0, 'occupancy', 'Market Square Garage', '2018-08-06 07:00:00', '2019-03-03 15:04:07'),
(10, 0, 'vacancy', 'Market Square Garage', '2018-08-07 05:00:00', '2019-03-03 15:05:48'),
(11, 0, 'occupancy', 'State Street Garage', '2018-08-07 06:00:00', '2019-03-03 15:05:48'),
(12, 11, 'occupancy', 'State Street Garage', '2018-08-08 01:00:00', '2019-03-03 15:06:34'),
(13, 0, 'vacancy', 'State Street Garage', '2018-08-08 12:00:00', '2019-03-03 15:07:40'),
(14, 140, 'vacancy', 'State Street Garage', '2018-08-08 15:00:00', '2019-03-03 15:07:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

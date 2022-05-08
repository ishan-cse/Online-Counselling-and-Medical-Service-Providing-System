-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 07:39 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocmsps`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `mobile`, `email`, `details`) VALUES
(1, 'Tanin', '01264215475', 'tanin@gmail.com', 'Good!\r\n'),
(2, 'Tanima', '01264051544', 'tanima@gmail.com', 'Good!'),
(3, 'Anita', '01214516487', 'anita@gmail.com', 'Hello!\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `user_id`, `review`) VALUES
(2, 7, 'Good!'),
(3, 7, 'This is a very good website!'),
(4, 7, 'This a very good & informative website, I love This website!'),
(5, 7, 'Good! This a good website! I like this one !'),
(6, 9, 'This is very useful website'),
(7, 7, 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` bigint(20) NOT NULL,
  `service_details` text NOT NULL,
  `service_request_sending_date` varchar(50) NOT NULL,
  `servicer_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `service_slug` varchar(255) NOT NULL,
  `service_request_pending_status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_details`, `service_request_sending_date`, `servicer_id`, `user_id`, `service_slug`, `service_request_pending_status`) VALUES
(4, 'I need motivation service.', '2022-02-14', 6, 7, 'MOT-SER620a5962f37c9', 0),
(5, 'Hello!', '2022-02-19', 6, 7, 'MOT-SER620fe025d106c', 1),
(6, 'Hello I need counselling service', '2022-04-08', 9, 7, 'MOT-SER625013b6d9057', 0),
(7, 'Hello', '2022-04-08', 8, 7, 'MOT-SER62501c08526a6', 0),
(8, 'I want service ', '2022-04-08', 8, 7, 'MOT-SER62503b324ce66', 1),
(9, 'I want service', '2022-04-08', 6, 7, 'MOT-SER62503b4be3121', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_messenger`
--

CREATE TABLE `service_messenger` (
  `service_messenger_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `messages` text NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `message_time` varchar(50) NOT NULL,
  `message_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_messenger`
--

INSERT INTO `service_messenger` (`service_messenger_id`, `sender_id`, `messages`, `service_id`, `message_time`, `message_date`) VALUES
(9, 6, 'Hi', 4, '11:24 am', '2022-02-16'),
(10, 7, 'Yes!', 4, '6:19 pm', '2022-02-16'),
(11, 7, 'Thanks for approvation.', 4, '6:20 pm', '2022-02-16'),
(12, 6, 'How are you?', 4, '6:22 pm', '2022-02-16'),
(13, 7, 'Alhamdulillah , I am fine dear!', 4, '1:46 am', '2022-02-20'),
(14, 7, 'Hi', 4, '8:24 pm', '2022-02-28'),
(15, 9, 'Hello!', 6, '5:28 pm', '2022-04-08'),
(16, 8, 'How are you dear!', 7, '5:33 pm', '2022-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `id` int(11) NOT NULL,
  `sa_email` varchar(100) NOT NULL,
  `sa_password` varchar(32) NOT NULL,
  `role_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`id`, `sa_email`, `sa_password`, `role_id`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(21) NOT NULL,
  `address` text NOT NULL,
  `nid` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `address`, `nid`, `password`, `photo`, `joining_date`, `role_id`, `slug`) VALUES
(1, 'Alex', 'alex@gmail.com', '012145784475', 'Gazipur,BD', '354056465400', '202cb962ac59075b964b07152d234b70', 'counsellor_1647100071_816005.jpg', '2022-01-26', 3, 'EMP612b88b02183e'),
(6, 'Tanima', 'tanima@gmail.com', '01100544487', 'Dhaka', '0315940181089089', '202cb962ac59075b964b07152d234b70', 'counsellor_1647100096_783074.png', '2022-02-12', 3, 'MOTIV6208dfb4349a5'),
(7, 'Jem', 'jem@gmail.com', '65467646487', 'Dhaka', '825892484868628982689', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, 4, 'USER620a354c48526'),
(8, 'Anima', 'anima@gmail.com', '01214514847', 'Dhaka', '501656565353153631', '827ccb0eea8a706c4c34a16891f84e7b', 'doctor_1647099931_784597.jpg', '2022-02-26', 2, 'MOTIV6224dd25a3887'),
(9, 'Tamin', 'tamin@gmail.com', '012641547459', 'Dhaka', '01012214242222121222', '202cb962ac59075b964b07152d234b70', '', NULL, 3, 'USER624dc6482a5fa');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(2) NOT NULL,
  `role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Doctor'),
(3, 'Counsellor'),
(4, 'Patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_messenger`
--
ALTER TABLE `service_messenger`
  ADD PRIMARY KEY (`service_messenger_id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_messenger`
--
ALTER TABLE `service_messenger`
  MODIFY `service_messenger_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

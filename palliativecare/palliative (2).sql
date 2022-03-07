-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 12:36 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palliative`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add catgerory', 7, 'add_catgerory'),
(26, 'Can change catgerory', 7, 'change_catgerory'),
(27, 'Can delete catgerory', 7, 'delete_catgerory'),
(28, 'Can view catgerory', 7, 'view_catgerory'),
(29, 'Can add login', 8, 'add_login'),
(30, 'Can change login', 8, 'change_login'),
(31, 'Can delete login', 8, 'delete_login'),
(32, 'Can view login', 8, 'view_login'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add provider', 10, 'add_provider'),
(38, 'Can change provider', 10, 'change_provider'),
(39, 'Can delete provider', 10, 'delete_provider'),
(40, 'Can view provider', 10, 'view_provider'),
(41, 'Can add feedback', 11, 'add_feedback'),
(42, 'Can change feedback', 11, 'change_feedback'),
(43, 'Can delete feedback', 11, 'delete_feedback'),
(44, 'Can view feedback', 11, 'view_feedback'),
(45, 'Can add complaint', 12, 'add_complaint'),
(46, 'Can change complaint', 12, 'change_complaint'),
(47, 'Can delete complaint', 12, 'delete_complaint'),
(48, 'Can view complaint', 12, 'view_complaint'),
(49, 'Can add servicerequest', 13, 'add_servicerequest'),
(50, 'Can change servicerequest', 13, 'change_servicerequest'),
(51, 'Can delete servicerequest', 13, 'delete_servicerequest'),
(52, 'Can view servicerequest', 13, 'view_servicerequest'),
(53, 'Can add payment', 14, 'add_payment'),
(54, 'Can change payment', 14, 'change_payment'),
(55, 'Can delete payment', 14, 'delete_payment'),
(56, 'Can view payment', 14, 'view_payment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'health', 'catgerory'),
(12, 'health', 'complaint'),
(11, 'health', 'feedback'),
(8, 'health', 'login'),
(14, 'health', 'payment'),
(10, 'health', 'provider'),
(13, 'health', 'servicerequest'),
(9, 'health', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-19 12:56:45.813066'),
(2, 'auth', '0001_initial', '2022-02-19 12:56:52.189304'),
(3, 'admin', '0001_initial', '2022-02-19 12:56:53.835139'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-19 12:56:53.898144'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-19 12:56:53.937820'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-19 12:56:55.146755'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-19 12:56:56.040890'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-19 12:56:56.437712'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-19 12:56:56.492249'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-19 12:56:57.595471'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-19 12:56:57.706446'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-19 12:56:57.869779'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-19 12:56:58.863623'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-19 12:56:59.784765'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-19 12:57:00.865222'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-19 12:57:00.968303'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-19 12:57:01.422270'),
(18, 'health', '0001_initial', '2022-02-19 12:57:05.359411'),
(19, 'sessions', '0001_initial', '2022-02-19 12:57:06.390861'),
(20, 'health', '0002_auto_20220221_1234', '2022-02-21 07:05:16.687496'),
(21, 'health', '0003_provider_provide_doc', '2022-02-24 11:26:26.262734');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cfczazqken9glngqej7kkwsz0j124cle', '.eJyrViotTi3KS8xNVbJSSkzJzcxT0lEqys9B5mamKFkZ1gIAMM4NdQ:1nNCME:YNTJgn_gBTYRwzAk8Zkv8KgT_A9RduXdSTq0m4jZT6E', '2022-03-10 11:32:26.108657'),
('oige8v33ht1w6xumtun2s0t0w34xgzkc', 'e30:1nLPx7:dudh02on_6C2bX9fH4g4ztvlVOtPi8KTYdS4k-cLfwE', '2022-03-05 13:39:09.357037'),
('y2u67fiicyw50xbwqt97924vkdgutcrl', 'e30:1nNC03:n1FC8NRQrlp7LEpswZ4ecFFl8FrEvWNCNw9OvsKvID0', '2022-03-10 11:09:31.452601');

-- --------------------------------------------------------

--
-- Table structure for table `health_catgerory`
--

CREATE TABLE `health_catgerory` (
  `catgerory_id` int(11) NOT NULL,
  `catgerory_name` varchar(200) NOT NULL,
  `catgerory_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_catgerory`
--

INSERT INTO `health_catgerory` (`catgerory_id`, `catgerory_name`, `catgerory_address`) VALUES
(1, 'Child care', 'child care'),
(2, 'parent care', 'parent care'),
(3, 'House Care', 'House care old peoples');

-- --------------------------------------------------------

--
-- Table structure for table `health_complaint`
--

CREATE TABLE `health_complaint` (
  `Complaint_id` int(11) NOT NULL,
  `Complaint_subject` varchar(100) NOT NULL,
  `Complaint_message` varchar(500) NOT NULL,
  `Complaint_date` varchar(100) NOT NULL,
  `Complaint_reply` varchar(500) NOT NULL,
  `Provider_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_complaint`
--

INSERT INTO `health_complaint` (`Complaint_id`, `Complaint_subject`, `Complaint_message`, `Complaint_date`, `Complaint_reply`, `Provider_id`) VALUES
(1, 'bhdfghdfg', 'gfdgdfgh', '2022-02-22', 'cxx', 1),
(2, 'ikjughihkj', 'jhj', '2022-02-22', 'not yet Seen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `health_feedback`
--

CREATE TABLE `health_feedback` (
  `Feedback_id` int(11) NOT NULL,
  `Feedback_subject` varchar(100) NOT NULL,
  `Feedback_message` varchar(500) NOT NULL,
  `Feedback_date` varchar(100) NOT NULL,
  `Feedback_reply` varchar(500) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_feedback`
--

INSERT INTO `health_feedback` (`Feedback_id`, `Feedback_subject`, `Feedback_message`, `Feedback_date`, `Feedback_reply`, `user_id`) VALUES
(2, 'hdfgdffg', 'gsgsdg', '2022-02-22', 'not yet Seen', NULL),
(3, 'xvgsdfv', 'dsgfdsg', '2022-02-22', 'not yet Seen', NULL),
(4, 'xvgsdfv', 'dsgfdsg', '2022-02-22', 'not yet Seen', 14),
(5, 'gdghdf', 'hdhdh', '2022-02-22', 'not yet Seen', 14),
(6, 'gdghdf', 'hdhdh', '2022-02-22', 'not yet Seen', 14),
(7, 'gdghdf', 'hdhdh', '2022-02-22', 'not yet Seen', 14),
(8, 'gdghdf', 'hdhdh', '2022-02-22', 'gfdghdfhdfh', 14);

-- --------------------------------------------------------

--
-- Table structure for table `health_login`
--

CREATE TABLE `health_login` (
  `logid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_login`
--

INSERT INTO `health_login` (`logid`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(3, 'sarath', 'sarath', 'user'),
(12, 'sarath', 'sarath', 'user'),
(14, 'sarath', '9898989898', 'user'),
(16, 'akku', '123', 'user'),
(22, 'ammu', 'ammu', 'provider'),
(23, 'qwerty', '123546', '');

-- --------------------------------------------------------

--
-- Table structure for table `health_payment`
--

CREATE TABLE `health_payment` (
  `Pay_id` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `pay_status` varchar(100) NOT NULL,
  `servicerequest_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_payment`
--

INSERT INTO `health_payment` (`Pay_id`, `amount`, `pay_status`, `servicerequest_id`, `user_id`) VALUES
(1, '2000', 'Payment Complete', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `health_provider`
--

CREATE TABLE `health_provider` (
  `Provide_id` int(11) NOT NULL,
  `Provide_name` varchar(100) NOT NULL,
  `Provide_address` varchar(500) NOT NULL,
  `Provide_email` varchar(200) NOT NULL,
  `Provide_phone` varchar(100) NOT NULL,
  `Provide_status` varchar(50) NOT NULL,
  `Provide_logid_id` int(11) DEFAULT NULL,
  `catgerory_id` int(11) DEFAULT NULL,
  `Provide_district` varchar(100) NOT NULL,
  `Provide_location` varchar(200) NOT NULL,
  `Provide_tharif` varchar(100) NOT NULL,
  `Provide_doc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_provider`
--

INSERT INTO `health_provider` (`Provide_id`, `Provide_name`, `Provide_address`, `Provide_email`, `Provide_phone`, `Provide_status`, `Provide_logid_id`, `catgerory_id`, `Provide_district`, `Provide_location`, `Provide_tharif`, `Provide_doc`) VALUES
(1, 'ammu', 'palavila shari', 'ammu@gmail.com', '8956895625', 'approve', 22, 1, 'ayathil', 'kollam', '5200', 'images/20220219_192615.png'),
(2, 'gh', 'xcvb', 'gfhj@fdg.fg', '9234567890', 'waiting', 23, 1, 'xcvb', 'xcvb', '200', 'images/20220219_192615.png');

-- --------------------------------------------------------

--
-- Table structure for table `health_servicerequest`
--

CREATE TABLE `health_servicerequest` (
  `request_id` int(11) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `service_details` varchar(1000) NOT NULL,
  `reg_date` varchar(200) NOT NULL,
  `request_date` varchar(100) NOT NULL,
  `request_rating` varchar(200) NOT NULL,
  `request_status` varchar(50) NOT NULL,
  `Provide_logid_id` int(11) DEFAULT NULL,
  `catgerory_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_servicerequest`
--

INSERT INTO `health_servicerequest` (`request_id`, `service_type`, `service_details`, `reg_date`, `request_date`, `request_rating`, `request_status`, `Provide_logid_id`, `catgerory_id`, `user_id`) VALUES
(1, 'Child care', 'gjgkghjkj', '2022-02-22', '2022-02-22', '4star', 'approve', 22, 1, 14),
(2, 'Child care', 'gjgkghjkj', '2022-02-22', '2022-02-22', '4star', 'approve', 22, 1, 14),
(3, 'Child care', 'hjgjgh', '2022-02-22', '2022-02-22', '4star', 'approve', 22, 1, 14),
(4, 'Child care', 'tytyyt', '2022-02-22', '2022-02-22', '4star', 'approve', 22, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `health_user`
--

CREATE TABLE `health_user` (
  `User_id` int(11) NOT NULL,
  `User_name` varchar(200) NOT NULL,
  `User_address` varchar(200) NOT NULL,
  `User_email` varchar(100) NOT NULL,
  `User_phone` varchar(100) NOT NULL,
  `User_status` varchar(200) NOT NULL,
  `Log_id_id` int(11) DEFAULT NULL,
  `User_district` varchar(200) NOT NULL,
  `User_location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_user`
--

INSERT INTO `health_user` (`User_id`, `User_name`, `User_address`, `User_email`, `User_phone`, `User_status`, `Log_id_id`, `User_district`, `User_location`) VALUES
(1, 'sarath', 'palavila shari niavs', 'sarath@gmail.com', '8956895656', 'waiting', 3, 'ayathil', 'kollam'),
(10, 'abhishek', 'palavila shari nivas', 'abhi@gmail.com', '8956235689', 'waiting', 12, 'ayathil', 'kollam'),
(12, 'sarath', 'palavila shari nivas', 'sarath@gmail.com', '8956552525', 'waiting', 14, 'ayathil', 'kollam'),
(14, 'advik', 'palavila veedu', 'silver@gmail.com', '825458569', 'waiting', 16, 'ayathil', 'kollam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `health_catgerory`
--
ALTER TABLE `health_catgerory`
  ADD PRIMARY KEY (`catgerory_id`);

--
-- Indexes for table `health_complaint`
--
ALTER TABLE `health_complaint`
  ADD PRIMARY KEY (`Complaint_id`),
  ADD KEY `health_complaint_Provider_id_eeb0e8ac_fk_health_pr` (`Provider_id`);

--
-- Indexes for table `health_feedback`
--
ALTER TABLE `health_feedback`
  ADD PRIMARY KEY (`Feedback_id`),
  ADD KEY `health_feedback_user_id_ede8d448_fk_health_user_User_id` (`user_id`);

--
-- Indexes for table `health_login`
--
ALTER TABLE `health_login`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `health_payment`
--
ALTER TABLE `health_payment`
  ADD PRIMARY KEY (`Pay_id`),
  ADD KEY `health_payment_servicerequest_id_1f5d013a_fk_health_se` (`servicerequest_id`),
  ADD KEY `health_payment_user_id_de0ff20f_fk_health_user_User_id` (`user_id`);

--
-- Indexes for table `health_provider`
--
ALTER TABLE `health_provider`
  ADD PRIMARY KEY (`Provide_id`),
  ADD KEY `health_provider_Provide_logid_id_6c51919c_fk_health_login_logid` (`Provide_logid_id`),
  ADD KEY `health_provider_catgerory_id_5c653894_fk_health_ca` (`catgerory_id`);

--
-- Indexes for table `health_servicerequest`
--
ALTER TABLE `health_servicerequest`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `health_servicereques_Provide_logid_id_4693cbe9_fk_health_lo` (`Provide_logid_id`),
  ADD KEY `health_servicereques_catgerory_id_682afd23_fk_health_ca` (`catgerory_id`),
  ADD KEY `health_servicerequest_user_id_7eaf902c_fk_health_user_User_id` (`user_id`);

--
-- Indexes for table `health_user`
--
ALTER TABLE `health_user`
  ADD PRIMARY KEY (`User_id`),
  ADD KEY `health_user_Log_id_id_615128bb_fk_health_login_logid` (`Log_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `health_catgerory`
--
ALTER TABLE `health_catgerory`
  MODIFY `catgerory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `health_complaint`
--
ALTER TABLE `health_complaint`
  MODIFY `Complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `health_feedback`
--
ALTER TABLE `health_feedback`
  MODIFY `Feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `health_login`
--
ALTER TABLE `health_login`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `health_payment`
--
ALTER TABLE `health_payment`
  MODIFY `Pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `health_provider`
--
ALTER TABLE `health_provider`
  MODIFY `Provide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `health_servicerequest`
--
ALTER TABLE `health_servicerequest`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `health_user`
--
ALTER TABLE `health_user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `health_complaint`
--
ALTER TABLE `health_complaint`
  ADD CONSTRAINT `health_complaint_Provider_id_eeb0e8ac_fk_health_pr` FOREIGN KEY (`Provider_id`) REFERENCES `health_provider` (`Provide_id`);

--
-- Constraints for table `health_feedback`
--
ALTER TABLE `health_feedback`
  ADD CONSTRAINT `health_feedback_user_id_ede8d448_fk_health_user_User_id` FOREIGN KEY (`user_id`) REFERENCES `health_user` (`User_id`);

--
-- Constraints for table `health_payment`
--
ALTER TABLE `health_payment`
  ADD CONSTRAINT `health_payment_servicerequest_id_1f5d013a_fk_health_se` FOREIGN KEY (`servicerequest_id`) REFERENCES `health_servicerequest` (`request_id`),
  ADD CONSTRAINT `health_payment_user_id_de0ff20f_fk_health_user_User_id` FOREIGN KEY (`user_id`) REFERENCES `health_user` (`User_id`);

--
-- Constraints for table `health_provider`
--
ALTER TABLE `health_provider`
  ADD CONSTRAINT `health_provider_Provide_logid_id_6c51919c_fk_health_login_logid` FOREIGN KEY (`Provide_logid_id`) REFERENCES `health_login` (`logid`),
  ADD CONSTRAINT `health_provider_catgerory_id_5c653894_fk_health_ca` FOREIGN KEY (`catgerory_id`) REFERENCES `health_catgerory` (`catgerory_id`);

--
-- Constraints for table `health_servicerequest`
--
ALTER TABLE `health_servicerequest`
  ADD CONSTRAINT `health_servicereques_Provide_logid_id_4693cbe9_fk_health_lo` FOREIGN KEY (`Provide_logid_id`) REFERENCES `health_login` (`logid`),
  ADD CONSTRAINT `health_servicereques_catgerory_id_682afd23_fk_health_ca` FOREIGN KEY (`catgerory_id`) REFERENCES `health_catgerory` (`catgerory_id`),
  ADD CONSTRAINT `health_servicerequest_user_id_7eaf902c_fk_health_user_User_id` FOREIGN KEY (`user_id`) REFERENCES `health_user` (`User_id`);

--
-- Constraints for table `health_user`
--
ALTER TABLE `health_user`
  ADD CONSTRAINT `health_user_Log_id_id_615128bb_fk_health_login_logid` FOREIGN KEY (`Log_id_id`) REFERENCES `health_login` (`logid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

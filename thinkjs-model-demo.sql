-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-08-29 14:26:44
-- 服务器版本： 5.7.22
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thinkjs-model-demo`
--

-- --------------------------------------------------------

--
-- 表的结构 `thinkjs_class`
--

CREATE TABLE `thinkjs_class` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `thinkjs_class`
--

INSERT INTO `thinkjs_class` (`id`, `name`) VALUES
(1, '三年二班'),
(2, '三年四班');

-- --------------------------------------------------------

--
-- 表的结构 `thinkjs_club`
--

CREATE TABLE `thinkjs_club` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `thinkjs_club`
--

INSERT INTO `thinkjs_club` (`id`, `name`) VALUES
(1, '精武门'),
(2, '前端娱乐圈');

-- --------------------------------------------------------

--
-- 表的结构 `thinkjs_student`
--

CREATE TABLE `thinkjs_student` (
  `id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `thinkjs_student`
--

INSERT INTO `thinkjs_student` (`id`, `class_id`, `name`) VALUES
(1, 1, '王小明'),
(2, 1, '陈二狗');

-- --------------------------------------------------------

--
-- 表的结构 `thinkjs_student_club`
--

CREATE TABLE `thinkjs_student_club` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `club_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `thinkjs_student_club`
--

INSERT INTO `thinkjs_student_club` (`id`, `student_id`, `club_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `thinkjs_student_info`
--

CREATE TABLE `thinkjs_student_info` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` int(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `thinkjs_student_info`
--

INSERT INTO `thinkjs_student_info` (`id`, `student_id`, `sex`, `age`) VALUES
(1, 1, '男', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `thinkjs_class`
--
ALTER TABLE `thinkjs_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thinkjs_club`
--
ALTER TABLE `thinkjs_club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thinkjs_student`
--
ALTER TABLE `thinkjs_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thinkjs_student_club`
--
ALTER TABLE `thinkjs_student_club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thinkjs_student_info`
--
ALTER TABLE `thinkjs_student_info`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `thinkjs_class`
--
ALTER TABLE `thinkjs_class`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `thinkjs_club`
--
ALTER TABLE `thinkjs_club`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `thinkjs_student`
--
ALTER TABLE `thinkjs_student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `thinkjs_student_club`
--
ALTER TABLE `thinkjs_student_club`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `thinkjs_student_info`
--
ALTER TABLE `thinkjs_student_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

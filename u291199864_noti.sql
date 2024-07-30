-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 23, 2024 at 07:17 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u291199864_noti`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `sent` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `body`, `image`, `sent`) VALUES
(231, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(232, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(233, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(234, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(235, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(236, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(237, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(238, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(239, 'ohgih oih hi', 'oih', 'oh', 1),
(240, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(241, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(242, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(243, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(244, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(245, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(246, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(247, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(248, '<p style=\"color:red;\">JPY_USD BUY EXOM!234</p>', 'Hi, this is test notification', '', 1),
(249, 'JPY_USD BUY EXOM!234', 'Hi, this is test notification', '', 1),
(250, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(251, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(252, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(253, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(254, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(255, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(256, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(257, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(258, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(259, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(260, 'ohgih oih hi', 'oih', 'oh', 1),
(261, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(262, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(263, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(264, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(265, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(266, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(267, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(268, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(269, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(270, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(271, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(272, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(273, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(274, 'ohgih oih hi', 'oih', 'oh', 1),
(275, 'ohgih oih hi', 'oih', 'oh', 1),
(276, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(277, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(278, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(279, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(280, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(281, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(282, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(283, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(284, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(285, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(286, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(287, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(288, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(289, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(290, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(291, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(292, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(293, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(294, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(295, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(296, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(297, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(298, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(299, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(300, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(301, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(302, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(303, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(304, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(305, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(306, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(307, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(308, 'hkug ig lkn', 'dwefs', 'gbilk,j', 1),
(309, 'USD_JPY BUy EXOM!234', 'qfdcv ', '', 1),
(310, 'ho ho kjoi', 'hlj', 'hjk', 1),
(311, 'ho ho kjoi', 'hlj', 'hjk', 1),
(312, 'ho ho kjoi', 'hlj', 'hjk', 1),
(313, 'ho ho kjoi', 'hlj', 'hjk', 1),
(314, 'ho ho kjoi', 'hlj', 'hjk', 1),
(315, 'ho ho kjoi', 'hlj', 'hjk', 1),
(316, 'ho ho kjoi', 'hlj', 'hjk', 1),
(317, 'ho ho kjoi', 'hlj', 'hjk', 1),
(318, 'ho ho kjoi', 'hlj', 'hjk', 1),
(319, 'ho ho kjoi', 'hlj', 'hjk', 1),
(320, 'ho ho kjoi', 'hlj', 'hjk', 1),
(321, 'ho ho kjoi', 'hlj', 'hjk', 1),
(322, 'ho ho kjoi', 'hlj', 'hjk', 1),
(323, 'ho ho kjoi', 'hlj', 'hjk', 1),
(324, 'ho ho kjoi', 'hlj', 'hjk', 1),
(325, 'ho ho kjoi', 'hlj', 'hjk', 1),
(326, 'ho ho kjoi', 'hlj', 'hjk', 1),
(327, 'ho ho kjoi', 'hlj', 'hjk', 1),
(328, 'ho ho kjoi', 'hlj', 'hjk', 1),
(329, 'ho ho kjoi', 'hlj', 'hjk', 1),
(330, 'ho ho kjoi', 'hlj', 'hjk', 1),
(331, 'ho ho kjoi', 'hlj', 'hjk', 1),
(332, 'ho ho kjoi', 'hlj', 'hjk', 1),
(333, 'ho ho kjoi', 'hlj', 'hjk', 1),
(334, 'ho ho kjoi', 'hlj', 'hjk', 1),
(335, 'ho ho kjoi', 'hlj', 'hjk', 1),
(336, 'ho ho kjoi', 'hlj', 'hjk', 1),
(337, 'ho ho kjoi', 'hlj', 'hjk', 1),
(338, 'ho ho kjoi', 'hlj', 'hjk', 1),
(339, 'USD_INR BUY EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(340, 'USD_INR SELL EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(341, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(342, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(343, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(344, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(345, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(346, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(347, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(348, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(349, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(350, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(351, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(352, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(353, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(354, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(355, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(356, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(357, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(358, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(359, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(360, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(361, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(362, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(363, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(364, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(365, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(366, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(367, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(368, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(369, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(370, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(371, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(372, 'USD_INR  SELL  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(373, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(374, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(375, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(376, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(377, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(378, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(379, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(380, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(381, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(382, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(383, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(384, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(385, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(386, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(387, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(388, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(389, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(390, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(391, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(392, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(393, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(394, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(395, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(396, 'USD_INR  BUY  EXOM!234', 'dwASZOC QWH9A SF', 'DQAWOSZDXCH BIUWEJSDX', 1),
(397, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(398, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(399, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(400, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(401, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(402, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(403, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(404, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(405, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(406, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(407, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(408, 'USD_JPY  BUY  EXOM!234', 'Embark on your trading journey with Vantage and unlock a TradingView plan for free. Select your TradingView plan: Pro, Pro+, and Premium to gain access more indicators.', 'https://6ztkp25f.tinifycdn.com/wp-content/uploads/2020/12/buy-and-sell.jpg', 1),
(409, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(410, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(411, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(412, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(413, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(414, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(415, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(416, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(417, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(418, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(419, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(420, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(421, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(422, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(423, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(424, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(425, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(426, 'USD_JPY  BUY  EXOM!234', 'HI.... MAY', 'https://as2.ftcdn.net/v2/jpg/05/37/15/09/1000_F_537150951_XaXOjYvQp3fRvX7AhKLzdpX1lShyJhbX.jpg', 1),
(427, 'USD_JPY  BUY  EXOM!234', 'check out this trade....', 'https://wallpaperaccess.com/full/2481570.jpg', 1),
(428, 'USD_JPY  BUY  EXOM!234', 'check out this trade....', 'https://wallpaperaccess.com/full/2481570.jpg', 1),
(429, 'USD_JPY  SELL  EXOM!234', 'check out this trade....', 'https://wallpaperaccess.com/full/2481570.jpg', 1),
(430, 'USD_JPY  SELL  EXOM!234', 'check out this trade....', 'https://wallpaperaccess.com/full/2481570.jpg', 1),
(431, 'USD_JPY  SELL  EXOM!234', 'check out this trade....', 'https://wallpaperaccess.com/full/2481570.jpg', 1),
(432, ';j  ;j  ;lj', 'lkjh', 'lkj', 1),
(433, ';j  ;j  ;lj', 'lkjh', 'lkj', 1),
(434, ';j  ;j  ;lj', 'lkjh', 'lkj', 1),
(435, ';j  ;j  ;lj', 'lkjh', 'lkj', 1),
(436, ';j  ;j  ;lj', 'lkjh', 'lkj', 1),
(437, ';j  ;j  ;lj', 'lkjh', 'lkj', 1),
(438, ';j  ;j  ;lj', 'lkjh', 'lkj', 1),
(439, ';j  ;j  ;lj', 'lkjh', 'lkj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `device_id` varchar(500) DEFAULT NULL,
  `allow_notification` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `country`, `city`, `rank`, `device_id`, `allow_notification`, `created_at`, `updated_at`) VALUES
(84, NULL, NULL, NULL, NULL, NULL, 'dO9-FCRU-NVb7L4mN2DJCr:APA91bFcEb0LT1P2Nu1A5puvoycSztHDFogFyV4Tmu2vanBvBd0eUwcW8hpPsoYSEgdbi0GrEbsDz70AZ38w2poTMZTHqBampS7ReB39D3YYVMm1HLH3RPJG-yu-QfG-jw00O9sNSzak', 0, '2024-07-23 06:03:44', '2024-07-23 06:03:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

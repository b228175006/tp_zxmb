-- phpMyAdmin SQL Dump
-- version 4.4.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-06-03 10:49:51
-- 服务器版本： 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tp_zxmb`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_login`
--

CREATE TABLE IF NOT EXISTS `tp_login` (
  `id` int(20) NOT NULL COMMENT 'ID',
  `username` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `logintime` int(30) NOT NULL COMMENT '登录时间',
  `loginip` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '登录IP',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '昵称',
  `jd` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '权限'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `tp_login`
--

INSERT INTO `tp_login` (`id`, `username`, `password`, `logintime`, `loginip`, `name`, `jd`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1433320050, '0.0.0.0', '管理员', 1),
(5, '021', '22b4f082ad9272063b0eb061858d3d65', 1432104222, '0.0.0.0', '落叶', 0),
(6, '309', '202cb962ac59075b964b07152d234b70', 1432104962, '0.0.0.0', '竹子', 0),
(7, '259', '202cb962ac59075b964b07152d234b70', 1432104176, '0.0.0.0', '小刘', 0),
(8, '258', '202cb962ac59075b964b07152d234b70', 1432104199, '0.0.0.0', '斌斌', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_zxmb`
--

CREATE TABLE IF NOT EXISTS `tp_zxmb` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `suolue` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '缩略图地址',
  `yetou` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '页头地址',
  `dianzhao` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '店招地址',
  `beijing` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '背景地址',
  `datu` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图地址',
  `orther` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '附件',
  `uper` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '上传人',
  `time` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '上传时间'
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `tp_zxmb`
--

INSERT INTO `tp_zxmb` (`id`, `suolue`, `yetou`, `dianzhao`, `beijing`, `datu`, `orther`, `uper`, `time`) VALUES
(30, './images/142839949099suolue.png', './images/yetou/142839949099yetou.jpg', './images/dianzhao/142839949099dianzhao.jpg', './images/beijing/142839949099beijing.jpg', './images/datu/142839949099datu.jpg', './images/orther/142839949099orther.txt', 'å°åˆ˜', '2015-04-07 17:38:10'),
(29, './images/142769500732suolue.png', './images/yetou/142769500732yetou.jpg', './images/dianzhao/142769500732dianzhao.jpg', './images/beijing/142769500732beijing.jpg', './images/datu/142769500732datu.jpg', './images/orther/142769500732orther.rar', 'ç«¹å­', '2015-03-30 13:56:47'),
(28, './images/142561064047suolue.png', './images/yetou/142561064047yetou.jpg', './images/dianzhao/142561064047dianzhao.jpg', './images/beijing/142561064047beijing.jpg', './images/datu/142561064047datu.jpg', './images/orther/142561064047orther.zip', 'æ–Œæ–Œ', '2015-03-06 10:57:20'),
(27, './images/142233074161suolue.png', './images/yetou/142233074161yetou.png', './images/dianzhao/142233074161dianzhao.jpg', './images/beijing/142233074161beijing.png', './images/datu/142233074161datu.jpg', './images/orther/142233074161orther.rar', 'ç«¹å­', '2015-01-27 11:52:21'),
(26, './images/142208627420suolue.jpg', './images/yetou/142208627420yetou.jpg', './images/dianzhao/142208627420dianzhao.png', './images/beijing/142208627420beijing.jpg', './images/datu/142208627420datu.jpg', './images/orther/142208627420orther.jpg', 'å¤§æ˜Œ', '2015-01-24 15:57:54'),
(25, './images/142208051726suolue.jpg', './images/yetou/142208051726yetou.gif', './images/dianzhao/142208051726dianzhao.png', './images/beijing/142208051726beijing.jpg', './images/datu/142208051726datu.jpg', './images/orther/142208051726orther.jpg', 'å°å½­', '2015-01-24 14:21:57'),
(24, './images/142206687533suolue.jpg', './images/yetou/142206687533yetou.png', './images/dianzhao/142206687533dianzhao.png', './images/beijing/142206687533beijing.png', './images/datu/142206687533datu.png', './images/orther/142206687533orther.zip', 'ä¼äºš', '2015-01-24 10:34:35'),
(22, './images/1421822052892jpgsl.jpg', './images/yetou/1421822052892jpgytbj.jpg', './images/dianzhao/1421822052892jpgdz.gif', './images/beijing/1421822052892jpgymbj.jpg', './images/datu/1421822052892jpggbj.jpg', './images/orther/1421822052892jpgmuban.zip', 'æ–Œæ–Œ', '2015-01-21 14:34:12'),
(20, './images/1421462980716jpgop.jpg', './images/yetou/1421462980716jpgyt.gif', './images/dianzhao/1421462980716jpgdz.gif', './images/beijing/1421462980716jpgbg2.jpg', './images/datu/1421462980716jpgTB2Rr0UaXXXXXboXpXXXXXXXXXX-74', './images/orther/1421462980716.txt', 'å°åˆ˜', '2015-01-17 10:49:40'),
(19, './images/1416963665339jpgmbslt.jpg', './images/yetou/1416963665339jpgytbj.jpg', './images/dianzhao/1416963665339jpgdz.gif', './images/beijing/1416963665339jpgymbj.jpg', './images/datu/1416963665339jpgbjdt.jpg', '', 'ç«¹å­', '2014-11-26 01:01:05'),
(15, './images/1416915495832jpg123.jpg', './images/yetou/1416915495832jpgyt.jpg', './images/dianzhao/1416915495832jpgdz.jpg', './images/beijing/1416915495832jpgbj.gif', './images/datu/1416915495832jpgdt2.jpg', '', 'è½å¶', '2014-11-25 11:38:15'),
(31, 'test', 'test', 'test', 'test', 'test', 'test', '', 'time()'),
(32, 'test1', 'test1', '123', './Muban/2015-05-13/5552fb82352e8.jpg', 'test1', './Muban/2015-05-13/5552fb823572f.jpg', '测试', '1431501698'),
(33, 'test1', 'test1', '123', './Muban/2015-05-13/5552fbacb0486.jpg', 'test1', './Muban/2015-05-13/5552fbacb0f88.jpg', '测试', '1431501740'),
(34, './Muban/2015-05-13/5552fc16ba75f.jpg', './Muban/2015-05-13/5552fc16baa2d.jpg', './Muban/2015-05-13/5552fc16bacfb.jpg', './Muban/2015-05-13/5552fc16baff6.jpg', './Muban/2015-05-13/5552fc16bb3eb.jpg', './Muban/2015-05-13/5552fc16bb93f.jpg', '测试', '1431501846'),
(35, './Muban/2015-05-13/5552fc7ce73ff.jpg', './Muban/2015-05-13/5552fc7ce766b.jpg', './Muban/2015-05-13/5552fc7ce7886.jpg', './Muban/2015-05-13/5552fc7ce7a34.jpg', './Muban/2015-05-13/5552fc7ce7c7d.jpg', './Muban/2015-05-13/5552fc7ce8133.jpg', '测试', '1431501948'),
(36, './Muban/2015-05-13/5552fc99bd1f4.jpg', './Muban/2015-05-13/5552fc99bd4af.jpg', './Muban/2015-05-13/5552fc99bd779.jpg', './Muban/2015-05-13/5552fc99bda4c.jpg', './Muban/2015-05-13/5552fc99bddf2.jpg', './Muban/2015-05-13/5552fc99be22c.jpg', '测试', '1431501977'),
(37, './Muban/2015-05-13/5552fccae51b3.jpg', './Muban/2015-05-13/5552fccae5467.jpg', './Muban/2015-05-13/5552fccae5897.jpg', './Muban/2015-05-13/5552fccae5c03.jpg', './Muban/2015-05-13/5552fccae6108.jpg', './Muban/2015-05-13/5552fccae64a5.jpg', '测试', '1431502026'),
(56, '', '', '', '', '', '', '测试', '1432101020'),
(57, '', '', '', '', '', '', '测试', '1432101106'),
(61, '/Muban/2015-05-20/555c30e345be9.jpg', '', '', '', '', '', '管理员', '1432105187'),
(41, './Muban/2015-05-13/5552fd8a09dc2.jpg', './Muban/2015-05-13/5552fd8a0a053.jpg', './Muban/2015-05-13/5552fd8a0a29a.jpg', './Muban/2015-05-13/5552fd8a0a4b7.jpg', './Muban/2015-05-13/5552fd8a0a70d.jpg', './Muban/2015-05-13/5552fd8a0a92d.jpg', '测试', '1431502218'),
(42, './Muban/2015-05-13/5552fdd468df6.jpg', './Muban/2015-05-13/5552fdd46929c.jpg', './Muban/2015-05-13/5552fdd46969c.jpg', './Muban/2015-05-13/5552fdd4699d9.jpg', './Muban/2015-05-13/5552fdd469dc1.jpg', './Muban/2015-05-13/5552fdd46a1eb.jpg', '测试', '1431502292'),
(43, './Muban/2015-05-13/5552fe0c081e9.jpg', './Muban/2015-05-13/5552fe0c08535.jpg', './Muban/2015-05-13/5552fe0c08812.jpg', './Muban/2015-05-13/5552fe0c08a5e.jpg', './Muban/2015-05-13/5552fe0c08cdc.jpg', './Muban/2015-05-13/5552fe0c08ee8.jpg', '测试', '1431502348'),
(58, '/Muban/2015-05-20/555c222cd28b8.jpg', '', '', '', '', '', '测试', '1432101420'),
(59, '/Muban/2015-05-20/555c2ea9d25e2.jpg', '', '', '', '', '/Muban/2015-05-20/555c2ea9d2a5f.jpg', '测试', '1432104617'),
(60, '/Muban/2015-05-20/555c304f2948a.jpg', '', '', '', '', '/Muban/2015-05-20/555c304f2d072.jpg', '测试', '1432105039'),
(45, './Muban/2015-05-13/5552febcbbdbf.jpg', './Muban/2015-05-13/5552febcbc298.jpg', './Muban/2015-05-13/5552febcbc81d.jpg', './Muban/2015-05-13/5552febcbcdc0.jpg', './Muban/2015-05-13/5552febcbd3bd.jpg', './Muban/2015-05-13/5552febcbd7ab.jpg', '测试', '1431502524'),
(49, './Muban/2015-05-13/5552ff4bb168f.jpg', './Muban/2015-05-13/5552ff4bb192d.jpg', './Muban/2015-05-13/5552ff4bb1bb6.jpg', './Muban/2015-05-13/5552ff4bb1fa7.jpg', './Muban/2015-05-13/5552ff4bb2287.jpg', './Muban/2015-05-13/5552ff4bb24aa.jpg', '测试', '1431502667'),
(50, './Muban/2015-05-13/5552ff60ad3bd.jpg', './Muban/2015-05-13/5552ff60ad85c.jpg', './Muban/2015-05-13/5552ff60add4c.jpg', './Muban/2015-05-13/5552ff60ae1e0.jpg', './Muban/2015-05-13/5552ff60ae5ed.jpg', './Muban/2015-05-13/5552ff60ae989.jpg', '测试', '1431502688'),
(51, './Muban/2015-05-13/5552ff66968f9.jpg', '', '', '', '', '', '测试', '1431502694'),
(52, './Muban/2015-05-13/5552ff96ae01f.jpg', '', '', '', '', '', '测试', '1431502742'),
(53, './Muban/2015-05-13/555300021b505.jpg', '', '', '', '', '', '测试', '1431502850'),
(62, '/Muban/2015-06-03/556ebab376dc7.jpg', '', '', '', '', '/Muban/2015-06-03/556ebab37de27.jpg', '管理员', '1433320115');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp_login`
--
ALTER TABLE `tp_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_zxmb`
--
ALTER TABLE `tp_zxmb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tp_login`
--
ALTER TABLE `tp_login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tp_zxmb`
--
ALTER TABLE `tp_zxmb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

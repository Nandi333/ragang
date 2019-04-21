-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 04:25 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsoft`
--
CREATE DATABASE IF NOT EXISTS `newsoft` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `newsoft`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(30) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, 'Applicaton Software'),
(2, 'System Software'),
(3, 'Computer programming tools');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetail`
--

CREATE TABLE `customerdetail` (
  `Cid` int(30) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Phone` varchar(60) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetail`
--

INSERT INTO `customerdetail` (`Cid`, `cname`, `Country`, `Phone`, `Email`, `Password`) VALUES
(6, 'Shivam Sharma', 'India', '7983072979', 'sshivam212@gmail.com', '1234'),
(7, 'udit singh', 'India', '8938201820', 'udaynayak@90', '123456'),
(8, 'Abhay Goel', 'India', '8724262828', 'abhay@12gmail.com', '0'),
(9, 'Ravi', 'India', '8236402338', 'sddfkfkdk@gmail.com', '12345'),
(10, 'kapil', 'Brazil', '563782954', 'kabrazil@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `tid` bigint(15) NOT NULL,
  `date` date NOT NULL,
  `Price` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `tid`, `date`, `Price`, `pid`, `uid`) VALUES
(14, 1554814819, '2019-04-09', 45, 1, 6),
(15, 1554815074, '2019-04-09', 45, 1, 6),
(16, 1554816019, '2019-04-09', 60, 2, 6),
(17, 1555318403, '2019-04-15', 80, 4, 6),
(18, 1555402418, '2019-04-16', 50, 5, 6),
(19, 1555402602, '2019-04-16', 0, 7, 6),
(20, 1555403268, '2019-04-16', 45, 1, 6),
(21, 1555404937, '2019-04-16', 45, 1, 6),
(22, 1555405080, '2019-04-16', 50, 5, 6),
(23, 1555405139, '2019-04-16', 0, 7, 6),
(24, 1555579380, '2019-04-18', 45, 1, 6),
(25, 1555666932, '2019-04-19', 60, 2, 6),
(26, 1555667611, '2019-04-19', 60, 2, 6),
(27, 1555669404, '2019-04-19', 60, 2, 6),
(28, 1555670041, '2019-04-19', 50, 5, 6),
(29, 1555732414, '2019-04-20', 50, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `pid` int(30) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `Price` double NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `image` varchar(30) NOT NULL,
  `Category_Id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`pid`, `pname`, `Price`, `Description`, `image`, `Category_Id`) VALUES
(1, 'Notepad++', 45, '<li>Notepad is a simple text editor for Microsoft Windows and a basic text-editing program which enables computer users to create documents.</li><br>\r\n\r\n<br><li>It was first released as a mouse-based MS-DOS program in 1983, and has been included in all versions of Microsoft Windows since Windows 1.0 in 1985.</li><br>\r\n\r\n<br><li>We all use Notepad in Microsoft Windows. Notepad is the most basic text-editing program using which you can create your documents. ... Notepad is a part of Windows Operating system 1985. But it has remained same in ever evolving Windows operating System but now with user efforts used in productive and efficient manner.</li>', '1.jpg', 1),
(2, 'Googlepay', 60, '<li> \r\nGoogle Pay (stylized as G Pay; formerly Pay with Google and Android Pay) is a digital wallet platform and online payment system developed by Google to power in-app and tap-to-pay purchases on mobile devices, enabling users to make payments with Android phones,\r\n\r\n</li><br>\r\n\r\n<li> \r\n As of January 8, 2018, the old Android Pay and Google Wallet have unified into a single pay system called Google Pay. Android Pay was rebranded and renamed as Google Pay.\r\n</li><br>\r\n\r\n\r\n<li> \r\nGoogle Pay uses Near Field Communication (NFC) to transmit card information facilitating funds transfer to the retailer. \r\n\r\n\r\n\r\n', '3.jpg', 1),
(3, 'Ubuntu', 70, '<li> \r\nA default installation of Ubuntu contains a wide range of software that includes LibreOffice, Firefox, Thunderbird, Transmission, and several lightweight games such as Sudoku and chess. Many additional software packages are accessible from the built in Ubuntu Software (previously Ubuntu Software Center) as well as any other APT-based package management tools\r\n</li><br>\r\n\r\n<li>\r\nMany additional software packages that are no longer installed by default, such as Evolution, GIMP, Pidgin, and Synaptic, are still accessible in the repositories still installable by the main tool or by any other APT-based package management tool.  \r\n</li><br>\r\n\r\n\r\n<li>\r\nUbuntu aims to be secure by default. User programs run with low privileges and cannot corrupt the operating system or other users\' files. \r\n</li><br>\r\n\r\n', '5.jpg', 2),
(4, 'Java', 80, '<li> \r\nJava is a general-purpose computer-programming language that is concurrent, class-based, object-oriented,and specifically designed to have as few implementation dependencies as possible.\r\n</li><br>\r\n\r\n<li>\r\nIt is intended to let application developers \"write once, run anywhere\",[meaning that compiled Java code can run on all platforms that support Java without the need for recompilation. \r\n</li><br>\r\n\r\n\r\n<li>\r\nJava applications are typically compiled to \"bytecode\" that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture.  \r\n</li><br>\r\n\r\n', '7.jpg', 3),
(5, 'vlc_media player', 50, '<li> \r\nVLC is a packet-based media player it plays almost all video content. It can play some, even if they\'re damaged, incomplete, or unfinished, such as files that are still downloading via a peer-to-peer (P2P) network\r\n</li><br>\r\n\r\n<li> \r\nIt also plays m2t MPEG transport streams (.TS) files while they are still being digitized from an HDV camera via a FireWire cable, making it possible to monitor the video as it is being played\r\n</li><br>\r\n\r\n\r\n<li> \r\nThe player can also use libcdio to access .iso files so that users can play files on a disk image, even if the user\'s operating system cannot work directly with .iso images. \r\n\r\n\r\n', '6.jpg', 1),
(7, 'Gogle Chorme', 0, '<li> \r\nGoogle Chrome features a minimalistic user interface, with its user-interface principles later being implemented into other browsers.\r\n</li><br>\r\n\r\n<li> \r\nChrome allows users to synchronize their bookmarks, history, and settings across all devices with the browser installed by sending and receiving data through a chosen Google Account, which in turn updates all signed-in instances of Chrome.\r\n</li><br>\r\n\r\n\r\n<li>\r\nChrome periodically retrieves updates of two blacklists (one for phishing and one for malware), and warns users when they attempt to visit a site flagged as potentially harmful. This service is also made available for use by others via a free public API called \"Google Safe Browsing API\". \r\n</li><br>\r\n\r\n', '8.jpg', 1),
(8, 'Python', 78, '<li> \r\nPython is an interpreted, high-level, general-purpose programming language.\r\n</li><br>\r\n\r\n<li>\r\nIt provides constructs that enable clear programming on both small and large scales.  \r\n</li><br>\r\n\r\n\r\n<li>\r\nPython is a multi-paradigm programming language. Object-oriented programming and structured programming are fully supported, and many of its features support functional programming and aspect-oriented programming (including by metaprogramming and metaobjects (magic methods)). Many other paradigms are supported via extensions, including design by contract and logic programming. \r\n</li><br>\r\n\r\n', '9.jpg', 3),
(9, 'PHP', 89, '<li> \r\nPHP: Hypertext Preprocessor is a general-purpose programming language originally designed for web development.\r\n</li><br>\r\n\r\n<li>\r\nThe standard PHP interpreter, powered by the Zend Engine, is free software released under the PHP License. \r\n</li><br>\r\n\r\n\r\n<li>\r\nPHP is mainly focused on server-side scripting, so you can do anything any other CGI program can do, such as collect form data, generate dynamic page content, or send and receive cookies. But PHP can do much more.\r\n</li><br>\r\n\r\n', '10.jpg', 3),
(10, 'Pinterst', 0, '<li> \r\nA Pin is an image that has been linked from a website or uploaded. Pins saved from one user\'s board can be saved to someone else\'s board, a process known as \"repinning.\" In 2016, Pinterest renamed the Pin it button to Save. \r\n</li><br>\r\n\r\n<li> \r\nThe purpose behind the renaming was due to international expansion, making the site more intuitive to new users.\r\n</li><br>\r\n\r\n\r\n<li>\r\nPinterest uses a feature called Guided Search, which gives keyword suggestions when entering a search term, narrowing down results. \r\n</li><br>\r\n\r\n', '11.jpg', 1),
(11, 'Linux', 0, '<li> \r\nDistributions include the Linux kernel and supporting system software and libraries, many of which are provided by the GNU Project. Many Linux distributions use the word \"Linux\" in their name,\r\n</li><br>\r\n\r\n<li>\r\nLinux was originally developed for personal computers based on the Intel x86 architecture, but has since been ported to more platforms than any other operating system \r\n</li><br>\r\n\r\n\r\n<li>\r\nLinux is the leading operating system on servers and other big iron systems such as mainframe computers, and the only OS used on TOP500 supercomputers (since November 2017, having gradually eliminated all competitors). \r\n</li><br>\r\n\r\n', '12.jpg', 2),
(12, 'Windows', 80, '<li> \r\nWindows: The operating system for mainstream personal computers, tablets and smartphones. The latest version is Windows 10. The main competitor of this family is macOS by Apple for personal computers and Android for mobile devices.\r\n</li><br>\r\n\r\n<li>\r\nWindows Server: The operating system for server computers. The latest version is Windows Server 2019. Unlike its client sibling, it has adopted a strong naming scheme. The main competitor of this family is Linux.  \r\n</li><br>\r\n\r\n\r\n<li>\r\nWindows PE: A lightweight version of its Windows sibling, meant to operate as a live operating system, used for installing Windows on bare-metal computers (especially on many computers at once), recovery or troubleshooting purposes. The latest version is Windows PE 10. \r\n</li><br>\r\n\r\n', '14.jpg', 2),
(13, 'C#', 90, '<li> \r\nC# has already been used for projects as diverse as dynamic Web sites, development tools, and even compilers.\r\n</li><br>\r\n\r\n<li> \r\nBecause it is a higher level language, you\'re more likely to get the code right in C# than C++. Java is one of the easiest programming languages to learn.\r\n</li><br>\r\n\r\n\r\n<li> \r\nC# can be used to create almost anything but is particularly strong at building Windows desktop applications and games.</li><br>', '15.jpg', 3),
(15, 'Android', 80, '<li> \r\nAndroid\'s default user interface is mainly based on direct manipulation, using touch inputs that loosely correspond to real-world actions, like swiping, tapping, pinching, and reverse pinching to manipulate on-screen objects,\r\n</li><br>\r\n\r\n<li>\r\nThe response to user input is designed to be immediate and provides a fluid touch interface, often using the vibration capabilities of the device to provide haptic feedback to the user \r\n</li><br>\r\n\r\n\r\n<li>\r\nAndroid devices boot to the homescreen, the primary navigation and information \"hub\" on Android devices, analogous to the desktop found on personal computers. \r\n</li><br>\r\n\r\n', '16.jpg', 2),
(17, 'IOS', 78, '<li> \r\nOriginally unveiled in 2007 for the iPhone, iOS has been extended to support other Apple devices such as the iPod Touch (September 2007) and the iPad (January 2010).\r\n</li><br>\r\n\r\n<li>\r\nThe iOS user interface is based upon direct manipulation, using multi-touch gestures. Interface control elements consist of sliders, switches,\r\n</li><br>\r\n\r\n\r\n<li>\r\nMajor versions of iOS are released annually. The current version, iOS 12, was released on September 17, 2018. It is available for all iOS devices with 64-bit processors; the iPhone 5S and later iPhone models, \r\n</li><br>\r\n\r\n', '17.jpg', 2),
(18, 'C++', 78, '<li> \r\nBoth of them can be used in web and desktop applications, but C# is much more popular now for both applications.\r\n</li><br>\r\n\r\n<li>\r\nC++ is a general-purpose object-oriented programming (OOP) language, developed by Bjarne Stroustrup, and is an extension of the C language.  \r\n</li><br>\r\n\r\n\r\n<li> \r\nIn general, abstraction makes learning a programming language easier. ... C++ is still considered a high-level language, but with the appearance of newer languages (Java, C#, Ruby etc...), C++ is beginning to be grouped with lower level languages like C.\r\n</li><br>\r\n\r\n', '18.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `customerdetail`
--
ALTER TABLE `customerdetail`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customerdetail`
--
ALTER TABLE `customerdetail`
  MODIFY `Cid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `pid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

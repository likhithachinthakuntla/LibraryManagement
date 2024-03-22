

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `libsystem`
--
CREATE DATABASE `libsystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `libsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pwd`, `firstName`, `lastName`, `mobile`, `email`, `pic`) VALUES
(1, 'admin1234', '12345', 'xyz', 'pqr', '9112341237', 'xyz@gmail.com', 'IMG_1490389195384.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `bookId` int(4) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `available` tinyint(4) NOT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `title`, `author`, `price`, `publisher`, `available`) VALUES
(1001, 'c programming', 'yashwant kanetkar', 250, 'krishna', 1),
(1002, 'english', 'jai mehra', 400, 'krishna', 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE IF NOT EXISTS `borrow` (
  `bookId` int(4) NOT NULL,
  `issueId` int(3) NOT NULL,
  `issueDate` datetime NOT NULL,
  `returnBookId` int(4) NOT NULL,
  `returnId` int(3) NOT NULL,
  `returnDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`bookId`, `issueId`, `issueDate`, `returnBookId`, `returnId`, `returnDate`) VALUES
(1002, 1, '2017-06-19 07:00:08', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(3) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `position` varchar(10) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pic` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstName`, `lastName`, `username`, `pwd`, `position`, `mobile`, `email`, `pic`) VALUES
(1, 'hitesh', 'reddy', 'hitesh1234', '1234', 'Student', '8468907402', 'hitesh.reddych789@gmail.com', 'IMG_20170401_174753.jpg'),
(2, 'deepika', 'padukone', 'deepika1234', '123456', 'Student', '9560989439', 'deepika.padukone@gmail.com', 'C360_2017-01-03-13-09-47-223.jpg'),
(3, 'satish', 'b', 'satish123', '12345', 'Faculty', '9891813716', 'bsatish@gmail.com', 'IMG_20160810_093650 1.jpg'),
(4, 'shakira', 'akira', 'shakira', '1234', 'Student', '8468907402', 'shakira@gmail.com', ''),
(5, 'mahesh', 'babu', 'mahi123', '1234', 'Student', '8826036670', 'mahesh.babu12@gmail.com', 'IMG_3181.JPG'),
(6, 'looney', 'loon', 'looney1', '12345', 'Student', '9560989439', 'looney12@gmail.com', 'IMG_20170505_110136.jpg'),
(7, 'virat', 'kohli', 'virat123', '1234', 'Student', '8468907402', 'virat.kohli123@gmail.com', 'C360_2017-04-01-11-28-35-724.jpg'),
(8, 'manish', 'malhotra', 'manish123', '12345', 'Faculty', '9878987898', 'manish.malhotra12@gmail.com', ''),
(9, 'aishwarya', 'bacchan', 'aishwarya', '12345', 'Faculty', '8745324652', 'aishwarya.rai12@gmail.com', ''),
(10, 'adolf', 'hitler', 'adolf123', '12345', 'Student', '9834965393', 'adolfhitler12@gmail.com', 'IMG_20160301_132501.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `requestforbooks`
--

CREATE TABLE IF NOT EXISTS `requestforbooks` (
  `requestId` int(3) NOT NULL,
  `bookName` text NOT NULL,
  `authorName` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `requestDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestforbooks`
--


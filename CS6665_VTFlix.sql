-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2017 at 10:32 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CS6665_VTFlix`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `CID` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `TVID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `DID` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list_performers`
--

CREATE TABLE `list_performers` (
  `VID` int(11) NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `performer`
--

CREATE TABLE `performer` (
  `PID` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `VID` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `UID_from` int(11) NOT NULL,
  `UID_to` int(11) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tv_episode`
--

CREATE TABLE `tv_episode` (
  `TVID` int(11) NOT NULL,
  `VID` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `season_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UID` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `location` varchar(128) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `VID` int(11) NOT NULL,
  `color` varchar(32) NOT NULL,
  `country` varchar(32) NOT NULL,
  `title` varchar(128) NOT NULL,
  `MPAA_rating` varchar(128) NOT NULL,
  `MPAA_name` varchar(32) NOT NULL,
  `producer` varchar(32) NOT NULL,
  `genre` varchar(128) NOT NULL,
  `release_date` date NOT NULL,
  `type` varchar(32) NOT NULL,
  `img_path` varchar(128) NOT NULL,
  `directorID_01` int(11) NOT NULL,
  `directorID_02` int(11) NOT NULL,
  `directorID_03` int(11) NOT NULL,
  `info` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`VID`, `color`, `country`, `title`, `MPAA_rating`, `MPAA_name`, `producer`, `genre`, `release_date`, `type`, `img_path`, `directorID_01`, `directorID_02`, `directorID_03`, `info`) VALUES
(10000, 'color', 'US', 'Moana', 'Parental Guidance, as some material may not be suitable for children.', 'PG', 'null', 'Action & Adventure, Animation, Kids & Family', '2016-11-23', 'movie', '/images/moana.jpg', 10000, 10001, 0, 'Three thousand years ago, the greatest sailors in the world voyaged across the vast Pacific, discovering the many islands of Oceania. But then, for a millennium, their voyages stopped - and no one knows exactly why. From Walt Disney Animation Studios comes "Moana," a sweeping, CG-animated feature film about an adventurous teenager who sails out on a daring mission to save her people. During her journey, Moana (voice of Auli''i Cravalho) meets the mighty demigod Maui (voice of Dwayne Johnson), who guides her in her quest to become a master wayfinder. Together, they sail across the open ocean on an action-packed voyage, encountering enormous monsters and impossible odds, and along the way, Moana fulfills the ancient quest of her ancestors and discovers the one thing she''s always sought: her own identity.'),
(10001, 'color', 'US', 'Billy Lynn''s Long Halftime Walk', 'Restricted, with no one under 17 admitted without an accompanying parent or guardian.', 'R', 'null', 'Drama', '2016-11-18', 'movie', '/images/billy.jpg', 10002, 0, 0, 'The film is told from the point of view of 19-year-old private Billy Lynn, who, along with his fellow soldiers in Bravo Squad, has been hailed as a hero and brought home for a victory tour after a harrowing Iraq battle. Through flashbacks, culminating at the spectacular halftime show of the Thanksgiving Day football game, the film reveals what really happened to the squad - contrasting the realities of the Iraq conflict with America''s celebration back home.'),
(10002, 'color', 'US', 'Pet', 'Restricted. Under 17 requires accompanying parent or adult guardian.', 'R', 'null', 'Mystery & Suspense', '2016-12-02', 'movie', '/images/pet.jpg', 10005, 0, 0, 'This haunting, psychological horror follows Seth, a lonely man working in an animal shelter. His monotonous routine is broken one day when he bumps into Holly, a girl from school who he soon becomes obsessed with. However, when she rejects his advances, Seth''s obsession reaches a terrifying new level, with Holly hiding secrets of her own.'),
(10003, 'color', 'US', 'Doctor Strange', 'Parental guidance is suggested in the case of children under the age of 13.', 'PG-13', 'null', 'Action & Adventure, Science Fiction & Fantasy', '2016-11-04', 'movie', '/images/doctor.jpg', 10003, 0, 0, 'A disgraced former surgeon named Stephen Strange (Benedict Cumberbatch) becomes a powerful sorcerer under the tutelage of a mystic known as the Ancient One (Tilda Swinton). Rachel McAdams, Mads Mikkelsen, and Chiwetel Ejiofor co-star in this entry in the Marvel Cinematic Universe. Directed by Scott Derrickson (Sinister).'),
(10004, 'color', 'US', 'Frank & Lola', 'Unrated', 'Unrated', 'null', 'Mystery & Suspense', '2016-12-09', 'movie', '/images/frank.jpg', 10004, 0, 0, 'An obsessive Las Vegas chef (Michael Shannon) falls in love with a mysterious woman (Imogen Poots), but an act of infidelity turns their relationship into a paranoid nightmare. Written and directed by Matthew Ross, Frank & Lola made its world premiere at the 2016 Sundance Film Festival.'),
(10005, 'color', 'US', 'Run the Tide', 'Parents Strongly Cautioned. Some material may be inappropriate for children under 13.', 'PG-13', 'null', 'Drama', '2016-12-02', 'movie', '/images/run.jpg', 10006, 0, 0, 'When their drug abusing mother is released from prison determined to rebuild their family, Rey kidnaps his younger brother Oliver and escapes their desert home for the California coast.'),
(10006, 'color', 'US', 'Arrival', 'Parental guidance is suggested in the case of children under the age of 13.', 'PG-13', 'null', 'Drama, Mystery & Suspense, Science Fiction & Fantasy', '2016-11-11', 'movie', '/images/arrival.jpg', 10007, 0, 0, 'When mysterious spacecraft touch down across the globe, an elite team--lead by expert linguist Louise Banks (Amy Adams)--are brought together to investigate. As mankind teeters on the verge of global war, Banks and the team race against time for answers--and to find them, she will take a chance that could threaten her life, and quite possibly humanity.'),
(10007, 'color', 'US', 'Jackie', 'Restricted, with no one under 17 admitted without an accompanying parent or guardian.', 'R', 'null', 'Drama', '2016-12-02', 'movie', '/images/jackie.jpg', 10009, 0, 0, 'JACKIE is a searing and intimate portrait of one of the most important and tragic moments in American history, seen through the eyes of the iconic First Lady, then Jacqueline Bouvier Kennedy (Natalie Portman). JACKIE places us in her world during the days immediately following her husband''s assassination. Known for her extraordinary dignity and poise, here we see a psychological portrait of the First Lady as she struggles to maintain her husband''s legacy and the world of "Camelot" that they created and loved so well.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`DID`);

--
-- Indexes for table `performer`
--
ALTER TABLE `performer`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`VID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`VID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

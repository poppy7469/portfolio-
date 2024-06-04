-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2024 at 08:36 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

-- History Comments
-- ===========================================================================
-- unknown collation utf8mb4_0900_ai_ci
--   See https://tecadmin.net/resolved-unknown-collation-utf8mb4_0900_ai_ci/
--     CHARSET=utf8 COLLATE=utf8_general_ci;       -- before MySQL 8.0.1
--     CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; -- from MySQL 8.0.1 onwards
-- ===========================================================================


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applicationmobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `appartenir`
--

CREATE TABLE `appartenir` (
  `id` int NOT NULL,
  `id_Jeux` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_jeux`
--

CREATE TABLE `categories_jeux` (
  `id` int NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Connexion` datetime(6) NOT NULL,
  `Conversation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `Nom`, `Connexion`, `Conversation`) VALUES
(9, 'patchen', '2023-06-10 21:17:46.000000', 'salut'),
(10, 'patchen', '2023-06-10 21:20:07.000000', 'salut'),
(11, 'patchen', '2023-06-10 21:22:25.000000', 'salut'),
(12, 'patchen', '2023-06-10 21:22:31.000000', '36'),
(13, 'patchen', '2023-06-10 21:22:34.000000', ''),
(14, 'patchen', '2023-06-10 21:23:35.000000', 'salut'),
(15, 'cavalli', '2023-06-10 21:24:16.000000', 'how are you?'),
(16, 'patchen', '2024-04-24 10:06:15.000000', 'fred');

-- --------------------------------------------------------

--
-- Table structure for table `discuter`
--

CREATE TABLE `discuter` (
  `id` int NOT NULL,
  `id_Users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identifier`
--

CREATE TABLE `identifier` (
  `id` int NOT NULL,
  `id_Jeux` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jeux`
--

CREATE TABLE `jeux` (
  `id` int NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jouer`
--

CREATE TABLE `jouer` (
  `id` int NOT NULL,
  `id_Users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recherche`
--

CREATE TABLE `recherche` (
  `Id` int NOT NULL,
  `Users` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jeux` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `recherche`
--

INSERT INTO `recherche` (`Id`, `Users`, `jeux`) VALUES
(1, NULL, 'game'),
(2, NULL, 'game');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `Pseudo` varchar(50) NOT NULL COMMENT 'UNIQUE',
  `nom` varchar(50) NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  `Mot_de_passe` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Connexion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Pseudo`, `nom`, `Genre`, `Age`, `Ville`, `Mot_de_passe`, `Email`, `Telephone`, `Image`, `Connexion`) VALUES
(35, 'Poppy', 'patchen', 'Femme', '24', 'Annecy', '222', 'poppy-74@hotmail.fr', '36363636', NULL, '1'),
(36, 'Poppy', 'patchen', 'Femme', '24', 'Annecy', '222', 'poppy-74@hotmail.fr', '36363636', NULL, '1'),
(37, 'gary', 'cavalli', 'Femme', '24', 'Annecy', '222', 'poppy-74@hotmail.fr', '36363636', NULL, '1'),
(38, 'Poppy', 'patchen', 'Femme', '24', 'Annecy', '222', 'poppy-74@hotmail.fr', '36363636', NULL, '1'),
(39, 'Poppy', 'patchen', 'Femme', '24', 'Annecy', '222', 'poppy-74@hotmail.fr', '36363636', NULL, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`id`,`id_Jeux`),
  ADD KEY `Appartenir_Jeux0_FK` (`id_Jeux`);

--
-- Indexes for table `categories_jeux`
--
ALTER TABLE `categories_jeux`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discuter`
--
ALTER TABLE `discuter`
  ADD PRIMARY KEY (`id`,`id_Users`),
  ADD KEY `Discuter_Users0_FK` (`id_Users`);

--
-- Indexes for table `identifier`
--
ALTER TABLE `identifier`
  ADD PRIMARY KEY (`id`,`id_Jeux`),
  ADD KEY `Identifier_Jeux0_FK` (`id_Jeux`);

--
-- Indexes for table `jeux`
--
ALTER TABLE `jeux`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jouer`
--
ALTER TABLE `jouer`
  ADD PRIMARY KEY (`id`,`id_Users`),
  ADD KEY `Jouer_Users0_FK` (`id_Users`);

--
-- Indexes for table `recherche`
--
ALTER TABLE `recherche`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories_jeux`
--
ALTER TABLE `categories_jeux`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recherche`
--
ALTER TABLE `recherche`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `Appartenir_categories_Jeux_FK` FOREIGN KEY (`id`) REFERENCES `categories_jeux` (`id`),
  ADD CONSTRAINT `Appartenir_Jeux0_FK` FOREIGN KEY (`id_Jeux`) REFERENCES `jeux` (`id`);

--
-- Constraints for table `discuter`
--
ALTER TABLE `discuter`
  ADD CONSTRAINT `Discuter_Discussions_FK` FOREIGN KEY (`id`) REFERENCES `discussions` (`id`),
  ADD CONSTRAINT `Discuter_Users0_FK` FOREIGN KEY (`id_Users`) REFERENCES `users` (`id`);

--
-- Constraints for table `identifier`
--
ALTER TABLE `identifier`
  ADD CONSTRAINT `Identifier_Discussions_FK` FOREIGN KEY (`id`) REFERENCES `discussions` (`id`),
  ADD CONSTRAINT `Identifier_Jeux0_FK` FOREIGN KEY (`id_Jeux`) REFERENCES `jeux` (`id`);

--
-- Constraints for table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `Jouer_Jeux_FK` FOREIGN KEY (`id`) REFERENCES `jeux` (`id`),
  ADD CONSTRAINT `Jouer_Users0_FK` FOREIGN KEY (`id_Users`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

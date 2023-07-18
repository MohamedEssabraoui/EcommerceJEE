-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 18 juil. 2023 à 09:29
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecomerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `email` varchar(100) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `orderDate` varchar(100) DEFAULT NULL,
  `deliveryDate` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `transactionId` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`email`, `product_id`, `quantity`, `price`, `total`, `address`, `city`, `state`, `country`, `mobileNumber`, `orderDate`, `deliveryDate`, `paymentMethod`, `transactionId`, `status`) VALUES
('amine@gmail.com', 1, 5, 1000, 5000, 'hay riad', 'Rabat', 'Rabat', 'Morocco', 688383891, '2023-07-19 10:52:18', '2023-07-26 10:52:18', 'Cash on delivery(COD)', '', 'Delivered'),
('mostapha@gmail.com', 2, 2, 2000, 4000, 'hay riad', 'Rabat', 'Rabat', 'Morocco', 688383891, '2023-07-19 10:52:18', '2023-07-26 10:52:18', 'Cash on delivery(COD)', '', 'Cancel'),
('amine@gmail.com', 1, 1, 1000, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('kamal@gmail.com', 1, 1, 1000, 1000, 'Wifaq apt', 'Temara', 'Rabat', 'Maroc', 665448877, '2023-07-07 15:06:11', '2023-07-14 15:06:11', 'Cash on delivery(COD)', '', 'processing'),
('kamal@gmail.com', 2, 1, 2000, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('mokdir@gmail.com', 5, 1, 5000, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `email`, `subject`, `body`) VALUES
(1, 'amine@gmail.com', 'Great', 'Great'),
(2, 'mostapha@gmail.com', 'hey', 'nice website');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`, `active`) VALUES
(1, 'puma', 'Shoe', 1000, 'Yes'),
(2, 'nike', 'Shoe', 2000, 'Yes'),
(3, 'adidas', 'Shoe', 3000, 'Yes'),
(4, 'jeans', 'denim', 8000, 'Yes'),
(5, 'jacket', 'Jacket', 5000, 'Yes');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`name`, `email`, `mobileNumber`, `password`, `address`, `city`, `state`, `country`) VALUES
('amine', 'amine@gmail.com', 688383891, '12345', 'youssofia', 'kech', 'kech', 'Morocco'),
('mostapha', 'mostapha@gmail.com', 673216540, '12345', 'sale', 'sale', 'rabat', 'Morocco'),
('kamal', 'kamal@gmail.com', 665448877, '12345', 'Wifaq apt', 'Temara', 'Rabat', 'Maroc'),
('smail', 'smail@gmail.com', 665456487, '12345', 'redouane', 'Temara', 'Rabat', 'Maroc'),
('mokdir', 'mokdir@gmail.com', 123456789, '12345', 'massira', 'Temara', 'Rabat', 'Maroc');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

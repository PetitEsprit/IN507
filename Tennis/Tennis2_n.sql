-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 13 Novembre 2019 à 14:59
-- Version du serveur :  10.1.24-MariaDB-6
-- Version de PHP :  7.0.22-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `user`
--

-- --------------------------------------------------------

--
-- Structure de la table `Gain`
--

CREATE TABLE `Gain` (
  `nomjoueur` varchar(30) NOT NULL,
  `nomsponsor` varchar(30) DEFAULT NULL,
  `lieutournoi` varchar(30) NOT NULL,
  `annee` int(11) NOT NULL,
  `rang` int(11) DEFAULT NULL,
  `prime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Gain`
--

INSERT INTO `Gain` (`nomjoueur`, `nomsponsor`, `lieutournoi`, `annee`, `rang`, `prime`) VALUES
('Berdych', 'ERROR', 'Winbledon', 2010, 2, 0),
('Djokovic', 'IBM', 'Australie', 2011, 1, 1000000),
('Djokovic', 'Wilson', 'Flushing-Meadows', 2010, 2, 500000),
('Djokovic', 'Wilson', 'Flushing-Meadows', 2011, 1, 1000000),
('Djokovic', 'ERROR', 'Winbledon', 2011, 1, 0),
('Federer', 'IBM', 'Australie', 2010, 1, 1000000),
('Federer', 'Peugeot', 'Roland-Garros', 2011, 2, 500000),
('Murray', 'IBM', 'Australie', 2010, 2, 500000),
('Murray', 'IBM', 'Australie', 2011, 2, 500000),
('Nadal', 'Wilson', 'Flushing-Meadows', 2010, 1, 1000000),
('Nadal', 'Wilson', 'Flushing-Meadows', 2011, 2, 500000),
('Nadal', 'Peugeot', 'Roland-Garros', 2010, 1, 1000000),
('Nadal', 'Peugeot', 'Roland-Garros', 2011, 1, 1000000),
('Nadal', 'ERROR', 'Winbledon', 2010, 1, 0),
('Nadal', 'ERROR', 'Winbledon', 2011, 2, 0),
('Soederling', 'Peugeot', 'Roland-Garros', 2010, 2, 500000);

-- --------------------------------------------------------

--
-- Structure de la table `Joueurs`
--

CREATE TABLE `Joueurs` (
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationalite` varchar(30) DEFAULT NULL,
  `taille` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Joueurs`
--

INSERT INTO `Joueurs` (`nom`, `prenom`, `age`, `nationalite`, `taille`) VALUES
('Berdych', 'Tomas', 34, 'republique tcheque', 196),
('Djokovic', 'Novak', 32, 'belgrade', 188),
('Federer', 'Roger', 34, 'suisse', 185),
('Murray', 'Andy', 32, 'royaume-uni', 190),
('Nadal', 'Raphael', 33, 'espagne', 185),
('Soederling', 'Robin', 35, 'suede', 193);

-- --------------------------------------------------------

--
-- Structure de la table `Rencontre`
--

CREATE TABLE `Rencontre` (
  `nomgagnant` varchar(30) NOT NULL,
  `nomperdant` varchar(30) NOT NULL,
  `lieutournoi` varchar(30) NOT NULL,
  `annee` int(11) NOT NULL,
  `score` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Rencontre`
--

INSERT INTO `Rencontre` (`nomgagnant`, `nomperdant`, `lieutournoi`, `annee`, `score`) VALUES
('Djokovic', 'Murray', 'Australie', 2011, '6/4-6/2-6/3'),
('Djokovic', 'Nadal', 'Flushing Meadows', 2011, '6/2-6/4-6/7-6/1'),
('Djokovic', 'Nadal', 'Winbledon', 2011, '6/4-6/1-1/6-6/3'),
('Federer', 'Murray', 'Australie', 2010, '6/3-6/4-7/6'),
('Nadal', 'Berdych', 'Winbledon', 2010, '6/3-7/5-6/4'),
('Nadal', 'Djokovic', 'Flushing Meadows', 2010, '6/4-5/7-6/4-6/2'),
('Nadal', 'Federer', 'Roland-Garros', 2011, '7/5-7/6-5/7-6/1'),
('Nadal', 'Soederling', 'Roland-Garros', 2010, '6/4-6/2-6/4');

-- --------------------------------------------------------

--
-- Structure de la table `Sponsor`
--

CREATE TABLE `Sponsor` (
  `nom` varchar(30) NOT NULL,
  `lieutournoi` varchar(30) NOT NULL,
  `annee` int(11) NOT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `montant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Sponsor`
--

INSERT INTO `Sponsor` (`nom`, `lieutournoi`, `annee`, `adresse`, `montant`) VALUES
('ERROR', 'Winbledon', 2010, 'Londre', 0),
('ERROR', 'Winbledon', 2011, 'Londre', 0),
('IBM', 'Australie', 2010, 'Melbourne', 2000),
('IBM', 'Australie', 2011, 'Melbourne', 2000),
('Peugeot', 'Roland-Garros', 2010, 'Paris', 4000),
('Peugeot', 'Roland-Garros', 2011, 'Paris', 4000),
('Wilson', 'Flushing-Meadows', 2010, 'New-York', 7000),
('Wilson', 'Flushing-Meadows', 2011, 'New-York', 7000);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Gain`
--
ALTER TABLE `Gain`
  ADD PRIMARY KEY (`nomjoueur`,`lieutournoi`,`annee`),
  ADD KEY `nomsponsor` (`nomsponsor`,`lieutournoi`,`annee`);

--
-- Index pour la table `Joueurs`
--
ALTER TABLE `Joueurs`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `Rencontre`
--
ALTER TABLE `Rencontre`
  ADD PRIMARY KEY (`nomgagnant`,`nomperdant`,`lieutournoi`,`annee`),
  ADD KEY `nomperdant` (`nomperdant`);

--
-- Index pour la table `Sponsor`
--
ALTER TABLE `Sponsor`
  ADD PRIMARY KEY (`nom`,`lieutournoi`,`annee`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Gain`
--
ALTER TABLE `Gain`
  ADD CONSTRAINT `Gain_ibfk_1` FOREIGN KEY (`nomjoueur`) REFERENCES `Joueurs` (`nom`),
  ADD CONSTRAINT `Gain_ibfk_2` FOREIGN KEY (`nomsponsor`,`lieutournoi`,`annee`) REFERENCES `Sponsor` (`nom`, `lieutournoi`, `annee`);

--
-- Contraintes pour la table `Rencontre`
--
ALTER TABLE `Rencontre`
  ADD CONSTRAINT `Rencontre_ibfk_1` FOREIGN KEY (`nomgagnant`) REFERENCES `Joueurs` (`nom`),
  ADD CONSTRAINT `Rencontre_ibfk_2` FOREIGN KEY (`nomperdant`) REFERENCES `Joueurs` (`nom`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

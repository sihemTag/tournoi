-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 24 mars 2021 à 11:11
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `siteweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

DROP TABLE IF EXISTS `equipe`;
CREATE TABLE IF NOT EXISTS `equipe` (
  `nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `niveau` int(11) NOT NULL,
  `telephone` int(11) NOT NULL,
  `adresse` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `capitaine` int(11) NOT NULL,
  PRIMARY KEY (`nom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `id_joueur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nom_equipe` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_joueur`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`id_joueur`, `nom`, `prenom`, `nom_equipe`) VALUES
(1, 'nadal', 'raf', 'E1');

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

DROP TABLE IF EXISTS `rencontre`;
CREATE TABLE IF NOT EXISTS `rencontre` (
  `id_rencontre` int(11) NOT NULL AUTO_INCREMENT,
  `equipe1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `equipe2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `horaire` datetime NOT NULL,
  `date` date NOT NULL,
  `score` int(11) NOT NULL,
  `equipe_gagnante` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_rencontre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tournoi`
--

DROP TABLE IF EXISTS `tournoi`;
CREATE TABLE IF NOT EXISTS `tournoi` (
  `id_tournoi` int(11) NOT NULL AUTO_INCREMENT,
  `date_debut` date NOT NULL,
  `duree` time NOT NULL,
  `gestionnaire` int(11) NOT NULL,
  `lieu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nb_equipe` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tour` int(11) NOT NULL,
  PRIMARY KEY (`id_tournoi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

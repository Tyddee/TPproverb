-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 03 Juillet 2017 à 19:38
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tp_proverbes`
--

-- --------------------------------------------------------

--
-- Structure de la table `proverbes`
--

CREATE TABLE `proverbes` (
  `id` int(11) NOT NULL,
  `origine` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `corps` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `catégorie` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `proverbes`
--

INSERT INTO `proverbes` (`id`, `origine`, `corps`, `catégorie`) VALUES
(1, 'Andy Wachowski', 'Les ignorants sont bénis!', 'Film'),
(2, 'Pierre Dac', 'Géométrie politique : le carré de l\'hypoténuse parlementaire est égal à la somme de l\'imbécillité construite sur ses deux côtés extrêmes.', 'Politique'),
(3, 'Coluche', 'Les portes de l\'avenir sont ouvertes à ceux qui savent les pousser...', 'Général'),
(4, 'Coluche', 'Mesdames, un conseil. Si vous cherchez un homme beau, riche et intelligent...prenez-en trois !', 'Humour'),
(5, 'Gladiateurs', 'Fortitude et Honestas! (force et honneur!)', 'Devise'),
(9, 'Le Père est une ordure', '"Ecoutez Thérèse. Je n\'aime pas dire du mal mais effectivement elle est gentille."', 'Film');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `proverbes`
--
ALTER TABLE `proverbes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `proverbes`
--
ALTER TABLE `proverbes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

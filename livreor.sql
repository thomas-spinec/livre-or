-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 07 déc. 2022 à 13:58
-- Version du serveur : 10.6.11-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `livreor`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `commentaire`, `id_utilisateur`, `date`) VALUES
(2, 'Ceci est un test pour la date', 2, '2022-12-05 00:00:00'),
(3, 'Ce site est propre', 3, '2022-12-05 00:00:00'),
(4, 'La modération c&#039;est top', 1, '2022-12-05 00:00:00'),
(5, 'J&#039;ai bien morpionné, merci!', 4, '2022-12-05 00:00:00'),
(6, 'J&#039;ai mangé du pain hier', 5, '2022-12-05 00:00:00'),
(7, 'Sympa cette idée de livre d&#039;or!', 2, '2022-12-05 00:00:00'),
(8, 'Test 2 date', 2, '2022-12-06 15:39:01');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`) VALUES
(1, 'admin', '$2y$10$l.o3B3GBY.b25beWaaq8Qup57GDFlue8G24K1z1EboYt88QcmJk2S'),
(2, 'Tom', '$2y$10$n8gu3HiQzDMqa294kSDmx.lGqseTHnkauR4G3E8hUwPk4e0b215fu'),
(3, 'kami', '$2y$10$5RoY14Xjsn8sDOlPwwJfN.sDOUpT5kWND7i4mQIa8vBruv9G4xA4S'),
(4, 'nadou', '$2y$10$5zBzjB7pnGyB59Do71X/ROaW1pKRjmb318zwdjgvdpjOIiHDn2WzO'),
(5, 'abc', '$2y$10$7B6/WcvcJ8wf6yg0nEtdru51L9Vk4lZ.bg.QPKb57zrAFxT0EeG2O');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

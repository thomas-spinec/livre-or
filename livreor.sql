-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 08 déc. 2022 à 11:35
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `commentaire`, `id_utilisateur`, `date`) VALUES
(1, 'écrasement de la base de données pour test', 1, '2022-12-08 11:30:43'),
(2, 'Sympa cette idée de livre d&#039;or!', 2, '2022-12-08 11:31:37'),
(3, 'J&#039;ai mangé du pain hier', 3, '2022-12-08 11:32:12'),
(4, 'Ce site est propre!', 4, '2022-12-08 11:33:03'),
(5, 'J&#039;ai bien morpionné, merci!', 5, '2022-12-08 11:33:49'),
(6, 'la modération c&#039;est top!', 1, '2022-12-08 11:34:18'),
(7, 'Deuxième test', 2, '2022-12-08 11:34:55');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`) VALUES
(1, 'admin', '$2y$10$sN2Novn37oVKBJi5r6Hw4e3cy7i32EcHz/hWT4P9T1fWm3ju4/72i'),
(2, 'Tom', '$2y$10$CtfVAGWL22Z8aO6An3VhzOXjnRhvuzYSbtTXYNxBZmvWAPhSyCvGy'),
(3, 'abc', '$2y$10$LpHVQwezJ3g40qhRcmJZ/u6xZH6Xw3KursQx/6vTUQLOmmljaQhV.'),
(4, 'kami', '$2y$10$32IjPZvpVvPd9hiICl77peLrZmwwwZYNRtsQAlrSFB5g4qntg2hPC'),
(5, 'nadou', '$2y$10$296EPsSdr7j1IEJeDDasfu5Y1hIldL7/yVNu3OD5gyBYXYUTW3596');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

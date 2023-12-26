-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db_dev
-- Généré le : mar. 26 déc. 2023 à 16:35
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tips_programmations`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_c#`
--

CREATE TABLE `t_c#` (
  `id_C#` int NOT NULL,
  `Types_et_gestion_de_la_mémoire` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Conventions` text COLLATE utf8mb4_general_ci,
  `Comparaison_objet` text COLLATE utf8mb4_general_ci,
  `Polymorphisme_héritage` text COLLATE utf8mb4_general_ci,
  `Multihéritage_interface` text COLLATE utf8mb4_general_ci,
  `Classes_abstraite` text COLLATE utf8mb4_general_ci,
  `Héritage_vs_composition` text COLLATE utf8mb4_general_ci,
  `Encapsulation` text COLLATE utf8mb4_general_ci,
  `Test_unitaire` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_c#`
--

INSERT INTO `t_c#` (`id_C#`, `Types_et_gestion_de_la_mémoire`, `Conventions`, `Comparaison_objet`, `Polymorphisme_héritage`, `Multihéritage_interface`, `Classes_abstraite`, `Héritage_vs_composition`, `Encapsulation`, `Test_unitaire`) VALUES
(3, 'Type primitif: \r\n- int\r\n- bool\r\n- long\r\n- float \r\n- double\r\n- string\r\n- char\r\netc..\r\n', 'PascalCase:\r\n- Namespace\r\n- les classes\r\n  - les attributs (public)\r\n  - les methodes\r\n\r\n', 'Pour comparer des objets, on doit créer une méthode permettant leur comparaison.', 'AD_HOC:\r\nune même méthode peut être récrite  en modifiant soit le nombre de paramètre soit leur type ça s\'appelle la surcharge', 'En chaine:\r\nune classe enfant peut avoir plusieurs classe parent. ', 'Les classes abstraites permettent de définir des méthodes sans définir leur implémentation', 'Par composition on change la valeur de l’attribut grâce à une interface utilisée pour la méthode', 'Permet de détérminer le niveaux de visibilité\r\n\r\n- public\r\n- private\r\n- protected', 'Permet d\'effectuer des testes pour verifier que tout le code fonctionne'),
(4, 'Type complexe/type composite:\r\ntypes créés par le developpeur (les classes), ou récuperer de librairie', 'CamelCase:\r\n- Les Variables\r\n- paramètres de méthode\r\n', NULL, 'Paramétré:\r\nPermet de déclarer la classe avec un type spécifique qui est remplacer dans toutes les méthodes.', 'Héritage multiple:\r\nUne classe peut hériter que d’une seule classe (parent) car il peut y avoir conflit si deux méthodes ont le même nom.\r\n', 'L’implémentation des méthodes est réalisée par les classes concrète (enfant) qui dérive de la classe abstraite (parent)', NULL, 'Cela ne concerne en aucun cas la sécurité', 'lors des tests une seule action d\'une methode est effectués'),
(5, 'Une classe est considéré comme un type (type complexe)', 'autre cas:\r\n- Les attributs privés commencent avec « _ » et commence avec une minuscule\r\n\r\n- Les interfaces commencent par un i majuscule.\r\n\r\n- Les méthodes sont nommées avec un verbe\r\n\r\n- Les attributs sont nommés avec un nom ou adjectif.', 'La methode s\'appelle généralement \"Equals\"', 'Héritage:\r\nl\'héritage permet une redéfinition d’une méthode de la classe parent dans une classe enfant. \r\n', 'Une interface est un contrat définissant des méthodes à implémenter et permet de définir les modalités d’utilisation d’un système.\r\n', 'Une classe abstraite ne peut pas être instanciée', NULL, 'L\'encapsulation est important pour l\'intégrité des données', 'caractéristique:\r\n- Rapide\r\n- Isolé\r\n- Répétable\r\n- Autocontrolable\r\n- D’un effort approprié');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_c#`
--
ALTER TABLE `t_c#`
  ADD PRIMARY KEY (`id_C#`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_c#`
--
ALTER TABLE `t_c#`
  MODIFY `id_C#` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

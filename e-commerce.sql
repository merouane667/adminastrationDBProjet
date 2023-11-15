-- Création de la base de données
CREATE DATABASE IF NOT EXISTS Ecommerce;

-- Utilisation de la base de données
USE Ecommerce;

-- Table pour stocker les informations des Clients
CREATE TABLE `Client` (
  `id` INT PRIMARY KEY ,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255)
);

-- Table pour stocker les informations des Administrateurs
CREATE TABLE `Admin` (
  `id` INT PRIMARY KEY ,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255)
);

-- Table pour stocker les informations des Super Administrateurs
CREATE TABLE `SuperAdmin` (
  `id` INT PRIMARY KEY ,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255)
);

-- Table pour stocker les informations des Commandes
CREATE TABLE `Commande` (
  `id` INT PRIMARY KEY ,
  `date` DATE,
  `client_id` INT,
  FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`) ON UPDATE CASCADE -- Mise à jour en cascade
);

-- Table pour stocker les informations des Vendeurs
CREATE TABLE `Vendeur` (
  `id` INT PRIMARY KEY ,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255)
);

-- Table pour stocker les informations des Boutiques
CREATE TABLE `Boutique` (
  `id` INT PRIMARY KEY ,
  `nom` VARCHAR(255),
  `vendeur_id` INT,
  FOREIGN KEY (`vendeur_id`) REFERENCES `Vendeur` (`id`) ON UPDATE CASCADE -- Mise à jour en cascade
);

-- Table pour stocker les informations des Employés
CREATE TABLE `Employe` (
  `id` INT PRIMARY KEY ,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255),
  `boutique_id` INT,
  FOREIGN KEY (`boutique_id`) REFERENCES `Boutique` (`id`) ON UPDATE CASCADE -- Mise à jour en cascade
);

-- Table pour stocker les informations des Produits
CREATE TABLE `Produit` (
  `id` INT PRIMARY KEY ,
  `nom` VARCHAR(255),
  `description` TEXT,
  `boutique_id` INT,
  `prix` DECIMAL(10, 2), -- Ajout de la colonne prix
  FOREIGN KEY (`boutique_id`) REFERENCES `Boutique` (`id`) ON UPDATE CASCADE -- Mise à jour en cascade
);

-- Table pivot pour représenter la relation many-to-many entre Produits et Commandes
CREATE TABLE `ProduitCommande` (
  `id` INT PRIMARY KEY ,
  `produit_id` INT,
  `commande_id` INT,
  FOREIGN KEY (`produit_id`) REFERENCES `Produit` (`id`) ON UPDATE CASCADE, -- Mise à jour en cascade
  FOREIGN KEY (`commande_id`) REFERENCES `Commande` (`id`) ON UPDATE CASCADE -- Mise à jour en cascade
);

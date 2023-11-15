-- Création de la base de données
CREATE DATABASE IF NOT EXISTS Ecommerce;

-- Utilisation de la base de données
USE Ecommerce;

-- Table pour stocker les informations des Clients
CREATE TABLE `Client` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255),
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table pour stocker les informations des Administrateurs
CREATE TABLE `Admin` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255),
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table pour stocker les informations des Super Administrateurs
CREATE TABLE `SuperAdmin` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255),
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table pour stocker les informations des Commandes
CREATE TABLE `Commande` (
  `id` INT PRIMARY KEY,
  `date` DATE,
  `client_id` INT,
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`) ON UPDATE CASCADE
);

-- Table pour stocker les informations des Vendeurs
CREATE TABLE `Vendeur` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255),
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table pour stocker les informations des Boutiques
CREATE TABLE `Boutique` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `vendeur_id` INT,
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`vendeur_id`) REFERENCES `Vendeur` (`id`) ON UPDATE CASCADE
);

-- Table pour stocker les informations des Employés
CREATE TABLE `Employe` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255),
  `boutique_id` INT,
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`boutique_id`) REFERENCES `Boutique` (`id`) ON UPDATE CASCADE
);

-- Table pour stocker les informations des Produits
CREATE TABLE `Produit` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `description` TEXT,
  `boutique_id` INT,
  `prix` DECIMAL(10, 2),
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`boutique_id`) REFERENCES `Boutique` (`id`) ON UPDATE CASCADE
);

-- Table pivot pour représenter la relation many-to-many entre Produits et Commandes
CREATE TABLE `ProduitCommande` (
  `id` INT PRIMARY KEY,
  `produit_id` INT,
  `commande_id` INT,
  `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`produit_id`) REFERENCES `Produit` (`id`) ON UPDATE CASCADE,
  FOREIGN KEY (`commande_id`) REFERENCES `Commande` (`id`) ON UPDATE CASCADE
);

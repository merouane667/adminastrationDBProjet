-- Création des tables
CREATE TABLE `Client` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255)
);

CREATE TABLE `Admin` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255)
);

CREATE TABLE `SuperAdmin` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255)
);

CREATE TABLE `Commande` (
  `id` INT PRIMARY KEY,
  `date` DATE,
  `client_id` INT,
  FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`) ON UPDATE CASCADE
);

CREATE TABLE `Vendeur` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255)
);

CREATE TABLE `Boutique` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `vendeur_id` INT,
  FOREIGN KEY (`vendeur_id`) REFERENCES `Vendeur` (`id`) ON UPDATE CASCADE
);

CREATE TABLE `Employe` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `prenom` VARCHAR(255),
  `boutique_id` INT,
  FOREIGN KEY (`boutique_id`) REFERENCES `Boutique` (`id`) ON UPDATE CASCADE
);

CREATE TABLE `Produit` (
  `id` INT PRIMARY KEY,
  `nom` VARCHAR(255),
  `description` TEXT,
  `boutique_id` INT,
  FOREIGN KEY (`boutique_id`) REFERENCES `Boutique` (`id`) ON UPDATE CASCADE
);

CREATE TABLE `ProduitCommande` (
  `id` INT PRIMARY KEY,
  `produit_id` INT,
  `commande_id` INT,
  FOREIGN KEY (`produit_id`) REFERENCES `Produit` (`id`) ON UPDATE CASCADE,
  FOREIGN KEY (`commande_id`) REFERENCES `Commande` (`id`) ON UPDATE CASCADE
);

-- Opérations en tant que vendeur
-- Exemple : Créer une boutique
INSERT INTO Boutique (nom, vendeur_id) VALUES ('Boutique Vendeur1', 1);

-- Exemple : Ajouter un employé
INSERT INTO Employe (nom, prenom, boutique_id) VALUES ('Employe1', 'Prenom1', 1);

-- Exemple : Créer un produit
INSERT INTO Produit (nom, description, boutique_id) VALUES ('Produit1', 'Description1', 1);

-- Exemple : Consulter les commandes d'un client
SELECT * FROM Commande WHERE client_id = 1;

-- Opérations en tant que client
-- Exemple : Passer une commande
INSERT INTO Commande (date, client_id) VALUES (CURRENT_DATE, 1);
-- Insérez ensuite les détails de la commande (ProduitCommande) en fonction des produits que le client a commandés

-- Opérations en tant que super administrateur
-- Exemple : Ajouter un administrateur
INSERT INTO SuperAdmin (nom, prenom) VALUES ('SuperAdmin1', 'PrenomSuperAdmin1');
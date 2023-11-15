-- Création de la base de données
CREATE DATABASE IF NOT EXISTS Ecommerce;
USE Ecommerce;

-- Insertion de données génériques pour tester
INSERT INTO Client (id, nom, prenom) VALUES (1, 'Client1', 'PrenomClient1');
INSERT INTO Vendeur (id, nom, prenom) VALUES (1, 'Vendeur1', 'PrenomVendeur1');
INSERT INTO Boutique (id, nom, vendeur_id) VALUES (1, 'Boutique1', 1);
INSERT INTO Employe (id, nom, prenom, boutique_id) VALUES (1, 'Employe1', 'PrenomEmploye1', 1);
INSERT INTO Produit (id, nom, description, boutique_id) VALUES (1, 'Produit1', 'DescriptionProduit1', 1);
INSERT INTO Commande (id, date, client_id) VALUES (1, '2023-01-01', 1);
INSERT INTO ProduitCommande (id, produit_id, commande_id) VALUES (1, 1, 1);

-- Opérations en tant que Vendeur

-- Créer une nouvelle boutique en tant que vendeur
INSERT INTO Boutique (nom, vendeur_id) VALUES ('NouvelleBoutique', 1);

-- Ajouter un employé à votre boutique
INSERT INTO Employe (nom, prenom, boutique_id) VALUES ('NouvelEmploye', 'PrenomNouvelEmploye', 2);

-- Ajouter un produit à votre boutique
INSERT INTO Produit (nom, description, boutique_id) VALUES ('NouveauProduit', 'DescriptionNouveauProduit', 2);

-- Consulter les commandes liées à votre boutique
SELECT * FROM Commande WHERE client_id IN (SELECT id FROM Client WHERE id = 1) AND id IN (SELECT commande_id FROM ProduitCommande WHERE produit_id IN (SELECT id FROM Produit WHERE boutique_id = 2));

-- Opérations en tant que Client

-- Passer une nouvelle commande en tant que client
INSERT INTO Commande (date, client_id) VALUES ('2023-02-01', 1);

-- Ajouter des produits à votre commande
INSERT INTO ProduitCommande (produit_id, commande_id) VALUES (2, 2);

-- Consulter vos commandes
SELECT * FROM Commande WHERE client_id = 1;

-- Opérations en tant que Super Administrateur

-- Ajouter un nouvel administrateur
INSERT INTO SuperAdmin (nom, prenom) VALUES ('SuperAdmin2', 'PrenomSuperAdmin2');

-- Consulter toutes les commandes
SELECT * FROM Commande;

-- Consulter tous les clients
SELECT * FROM Client;

-- Consulter tous les produits
SELECT * FROM Produit;

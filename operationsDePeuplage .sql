-- Insertion de données dans la table Client
INSERT INTO Client (nom, prenom) VALUES
('Doe', 'John'),
('Smith', 'Alice'),
('Johnson', 'Bob');

-- Insertion de données dans la table Admin
INSERT INTO Admin (nom, prenom) VALUES
('Admin1', 'PrenomAdmin1'),
('Admin2', 'PrenomAdmin2');

-- Insertion de données dans la table SuperAdmin
INSERT INTO SuperAdmin (nom, prenom) VALUES
('SuperAdmin1', 'PrenomSuperAdmin1'),
('SuperAdmin2', 'PrenomSuperAdmin2');

-- Insertion de données dans la table Vendeur
INSERT INTO Vendeur (nom, prenom) VALUES
('Vendeur1', 'PrenomVendeur1'),
('Vendeur2', 'PrenomVendeur2');

-- Insertion de données dans la table Boutique
INSERT INTO Boutique (nom, vendeur_id) VALUES
('Boutique1', 1),
('Boutique2', 2);

-- Insertion de données dans la table Employe
INSERT INTO Employe (nom, prenom, boutique_id) VALUES
('Employe1', 'PrenomEmploye1', 1),
('Employe2', 'PrenomEmploye2', 2);

-- Insertion de données dans la table Produit
INSERT INTO Produit (nom, description, boutique_id, prix) VALUES
('Produit1', 'DescriptionProduit1', 1, 19.99),
('Produit2', 'DescriptionProduit2', 1, 29.99),
('Produit3', 'DescriptionProduit3', 2, 24.99);

-- Insertion de données dans la table Commande
INSERT INTO Commande (date, client_id) VALUES
('2023-01-01', 1),
('2023-02-15', 2),
('2023-03-20', 3);

-- Insertion de données dans la table ProduitCommande
INSERT INTO ProduitCommande (produit_id, commande_id) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3);

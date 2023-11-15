-- Insertion de données dans la table Client
INSERT INTO Client (id, nom, prenom) VALUES
(1, 'Doe', 'John'),
(2, 'Smith', 'Alice'),
(3, 'Johnson', 'Bob');

-- Insertion de données dans la table Admin
INSERT INTO Admin (id, nom, prenom) VALUES
(1, 'Admin1', 'PrenomAdmin1'),
(2, 'Admin2', 'PrenomAdmin2');

-- Insertion de données dans la table SuperAdmin
INSERT INTO SuperAdmin (id, nom, prenom) VALUES
(1, 'SuperAdmin1', 'PrenomSuperAdmin1'),
(2, 'SuperAdmin2', 'PrenomSuperAdmin2');

-- Insertion de données dans la table Vendeur
INSERT INTO Vendeur (id, nom, prenom) VALUES
(1, 'Vendeur1', 'PrenomVendeur1'),
(2, 'Vendeur2', 'PrenomVendeur2');

-- Insertion de données dans la table Boutique
INSERT INTO Boutique (id, nom, vendeur_id) VALUES
(1, 'Boutique1', 1),
(2, 'Boutique2', 2);

-- Insertion de données dans la table Employe
INSERT INTO Employe (id, nom, prenom, boutique_id) VALUES
(1, 'Employe1', 'PrenomEmploye1', 1),
(2, 'Employe2', 'PrenomEmploye2', 2);

-- Insertion de données dans la table Produit
INSERT INTO Produit (id, nom, description, boutique_id, prix) VALUES
(1, 'Produit1', 'DescriptionProduit1', 1, 19.99),
(2, 'Produit2', 'DescriptionProduit2', 1, 29.99),
(3, 'Produit3', 'DescriptionProduit3', 2, 24.99);

-- Insertion de données dans la table Commande
INSERT INTO Commande (id, date, client_id) VALUES
(1, '2023-01-01', 1),
(2, '2023-02-15', 2),
(3, '2023-03-20', 3);

-- Insertion de données dans la table ProduitCommande
INSERT INTO ProduitCommande (id, produit_id, commande_id) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 3);

-- Sélection de tous les clients
SELECT * FROM Client;

-- Sélection de tous les administrateurs
SELECT * FROM Admin;

-- Sélection de tous les super administrateurs
SELECT * FROM SuperAdmin;

-- Sélection de toutes les commandes avec les détails du client
SELECT Commande.id as commande_id, date, Client.nom AS client_nom, Client.prenom AS client_prenom, Client.id AS client_id
FROM Commande
JOIN Client ON Commande.client_id = Client.id;

-- Sélection de tous les vendeurs avec les détails de leur boutique
SELECT Vendeur.nom AS vendeur_nom, Vendeur.prenom AS vendeur_prenom, Boutique.nom AS boutique_nom, Vendeur.id AS vendeur_id, Boutique.id AS boutique_id
FROM Vendeur
JOIN Boutique ON Vendeur.id = Boutique.vendeur_id;

-- Sélection de tous les employés avec les détails de leur boutique
SELECT Employe.id AS employe_id, Employe.nom AS employe_nom, prenom AS employe_prenom, Boutique.nom AS boutique_nom, Boutique.id AS boutique_id
FROM Employe
JOIN Boutique ON Employe.boutique_id = Boutique.id;

-- Sélection de tous les produits avec les détails de leur boutique
SELECT Produit.id AS produit_id, Produit.nom AS produit_nom, description, prix, Boutique.nom AS boutique_nom, Boutique.id AS boutique_id
FROM Produit
JOIN Boutique ON Produit.boutique_id = Boutique.id;

-- Sélection de tous les produits commandés avec les détails de la commande et du produit
SELECT ProduitCommande.id, Commande.id AS commande_id, Produit.id AS produit_id, Produit.nom AS produit_nom, Produit.prix
FROM ProduitCommande
JOIN Commande ON ProduitCommande.commande_id = Commande.id
JOIN Produit ON ProduitCommande.produit_id = Produit.id;

-- Sélection de toutes les boutiques avec les détails de leur vendeur
SELECT Boutique.id AS boutique_id, Boutique.nom AS boutique_nom, Vendeur.nom AS vendeur_nom, Vendeur.prenom AS vendeur_prenom
FROM Boutique
JOIN Vendeur ON Boutique.vendeur_id = Vendeur.id;

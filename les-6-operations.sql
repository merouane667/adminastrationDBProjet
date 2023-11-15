Le nombre de nouveaux clients par jour:

SELECT DATE(creation_date) AS date,
       COUNT(*) AS new_clients_count
FROM Client
GROUP BY DATE(creation_date)
ORDER BY DATE(creation_date);

Le nombre de produits créés au fil du temps (par jour):

SELECT DATE(creation_date) AS date,
       COUNT(*) AS new_products_count
FROM Produit
GROUP BY DATE(creation_date)
ORDER BY DATE(creation_date);


Le nombre de boutiques créées au fil du temps:

SELECT DATE(creation_date) AS date,
       COUNT(*) AS new_boutiques_count
FROM Boutique
GROUP BY DATE(creation_date)
ORDER BY DATE(creation_date);


Le nombre des commandes effectuées par jour:

SELECT DATE(date) AS date,
       COUNT(*) AS total_orders
FROM Commande
GROUP BY DATE(date)
ORDER BY DATE(date);

Le nombre des commandes effectuées par boutique et par jour:

SELECT DATE(c.date) AS date,
       p.boutique_id,
       COUNT(*) AS boutique_orders
FROM Commande c
JOIN ProduitCommande pc ON c.id = pc.commande_id
JOIN Produit p ON pc.produit_id = p.id
GROUP BY DATE(c.date), p.boutique_id
ORDER BY DATE(c.date), p.boutique_id;

Le montant des commandes effectuées par jour:

SELECT DATE(c.date) AS date,
       SUM(p.prix) AS total_amount
FROM Commande c
JOIN ProduitCommande pc ON c.id = pc.commande_id
JOIN Produit p ON pc.produit_id = p.id
GROUP BY DATE(c.date)
ORDER BY DATE(c.date);




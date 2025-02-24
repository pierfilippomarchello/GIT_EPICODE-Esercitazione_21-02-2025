CREATE DATABASE ToysGroup
;
USE ToysGroup
;

-- task 2 
CREATE TABLE productcategory (
IDproductcategory INT auto_increment primary key,
Englishproductcategoryname VARCHAR(25)
);

CREATE TABLE product (
IDproduct INT auto_increment primary key,
IDproductcategory INT,
englishproductdescription VARCHAR (40) ,
spanishproductdescription VARCHAR (40) ,
frenchproductdescription VARCHAR (40) ,
italianproductdescription VARCHAR (40) ,
weight DECIMAL (5,2),
recommended_age DECIMAL (2) ,
size varchar (20) ,
FOREIGN KEY (IDproductcategory) REFERENCES productcategory(IDproductcategory) 
)
;

CREATE TABLE country (
IDcountry INT auto_increment primary key,
englishcountrydescription varchar (15) NOT NULL
)
;

CREATE TABLE region (
IDregion INT auto_increment primary key,
IDcountry INT,
englishregiondescription varchar (40) NOT NULL,
FOREIGN KEY (IDcountry) REFERENCES country(IDcountry)
)
;

CREATE TABLE sales (
IDsales INT auto_increment primary key,
salesordernumber INT ,
salesorderlinenumber INT ,
orderdate date ,
orderquantity INT,
unitprice decimal (15,2) ,
sales_amount decimal (15,2),
total_productcost decimal (15,2),
IDproduct INT,
IDregion INT, 
FOREIGN KEY (IDproduct) REFERENCES product(IDproduct),
FOREIGN KEY (IDregion) REFERENCES region(IDregion)
)
;

-- task 3 
INSERT INTO productcategory (Englishproductcategoryname) values
('Action Figures'),
('Board Games'),
('Educational Toys'),
('Remote Control Toys')
;

INSERT INTO product (IDproductcategory, englishproductdescription, spanishproductdescription, frenchproductdescription, italianproductdescription, weight, recommended_age, size) VALUES
(4, 'Helicopter with Remote Control', 'Helicóptero con control remoto', 'Hélicoptère télécommandé', 'Elicottero telecomandabile', 0.8, 12, 'Medium'),
(1, 'TRASFORMERS', 'TRASFORMERS', 'TRASFORMERS', 'TRASFORMERS', 0.7, 7, 'Large'),
(2, 'Monopoly', 'Monopolio', 'Monopole', 'Monopoli', 1.0, 14, 'small'),
(2, 'Chess Set', 'Juego de ajedrez', 'Jeu d\'échecs', 'Set di scacchi', 1.2, 8, 'small'),
(3, 'Fire Station Playset', 'Estación de bomberos de juguete', 'Caserne de pompiers jouet', 'Caserma dei vigili del fuoco', 1.5, 5, 'Large'),
(4, 'Remote Control Car', 'Coche teledirigido', 'Voiture télécommandée', 'Auto radiocomandata', 2.0, 6, 'Medium'),
(3, 'Educational Chalkboard', 'Pizarra educativa', 'Tableau éducatif', 'Lavagnetta educativa', 0.9, 4, 'Medium'),
(4, 'Drone with Camera', 'Dron con cámara', 'Drone avec caméra', 'Drone con fotocamera', 1.8, 12, 'Medium')
;

INSERT INTO country (englishcountrydescription) values 
('USA'), 
('France'), 
('Italy'), 
('Germany'), 
('Switzerland'), 
('Brazil'),
('Australia')
;

INSERT INTO region (IDcountry, englishregiondescription) VALUES 
(1, 'North America'), 
(2, 'Western Europe'), 
(3, 'Southern Europe'), 
(4, 'Central Europe'),
(5, 'Central Europe'),
(6, 'South America'),
(7, 'Australia & New Zealand')
;

INSERT INTO sales (salesordernumber, salesorderlinenumber, orderdate, orderquantity, unitprice, sales_amount, total_productcost, IDproduct, IDregion) VALUES
(2025, 1, '2025-12-10', 5500, 25.00, 137500.00, 99000.00, 4, 7),  
(2024, 1, '2025-12-01', 11000, 27.00, 297000.00, 165000.00, 3, 2),  
(2023, 1, '2025-11-20', 13000, 39.00, 507000.00, 338000.00, 7, 7),  
(2019, 2, '2025-09-15', 10000, 50.00, 500000.00, 350000.00, 4, 5),  
(2019, 1, '2025-09-15', 9000, 27.00, 243000.00, 162000.00, 3, 5),   
(2018, 1, '2025-08-30', 7500, 22.50, 168750.00, 112500.00, 8, 1),   
(2017, 1, '2025-07-20', 5000, 15.00, 75000.00, 40000.00, 4, 3),    
(2016, 1, '2025-06-11', 5000, 25.00, 125000.00, 85000.00, 4, 2),   
(2015, 1, '2025-05-05', 6000, 18.00, 108000.00, 72000.00, 6, 4),   
(2014, 1, '2025-01-10', 12000, 60.00, 720000.00, 480000.00, 8, 5),  
(2013, 2, '2024-12-05', 11000, 33.00, 363000.00, 242000.00, 4, 1),  
(2013, 1, '2024-12-05', 4000, 16.00, 64000.00, 36000.00, 2, 1),    
(2012, 1, '2024-09-25', 10000, 50.00, 500000.00, 350000.00, 3, 6),  
(2011, 1, '2024-08-25', 12000, 24.00, 288000.00, 168000.00, 4, 4),  
(2010, 1, '2024-07-22', 7500, 21.00, 157500.00, 97500.00, 7, 3),   
(2009, 1, '2024-06-18', 9000, 38.00, 342000.00, 216000.00, 6, 1),   
(2008, 1, '2024-03-14', 8500, 25.50, 216750.00, 144500.00, 1, 2),   
(2007, 1, '2023-11-15', 4000, 16.00, 64000.00, 36000.00, 2, 1),    
(2006, 1, '2023-10-10', 6000, 18.00, 108000.00, 60000.00, 4, 4),   
(2005, 2, '2023-05-10', 8000, 32.00, 256000.00, 160000.00, 2, 1),   
(2005, 1, '2023-05-10', 15000, 45.00, 675000.00, 450000.00, 1, 1)
;

-- task 4 

-- 1)	Verificare che i campi definiti come PK siano univoci. In altre parole, scrivi una query per determinare l’univocità dei valori di ciascuna PK (una query per tabella implementata).

SELECT COUNT(*) as tutte_le_righe , COUNT(DISTINCT IDproduct) as righe_pk
FROM product;
-- se il numero di tutte le righe della tabella sono uguali alle righe della primary key allora il database è integro

-- 2)	Esporre l’elenco delle transazioni indicando nel result set il codice documento, la data, il nome del prodotto, la categoria del prodotto, il nome dello stato, il nome della regione di vendita e un campo booleano valorizzato in base alla condizione che siano passati più di 180 giorni dalla data vendita o meno (>180 -> True, <= 180 -> False)
-- codice documento, la data, il nome del prodotto, la categoria del prodotto, il nome dello stato, il nome della regione di vendita e un campo booleano 

SELECT sales.salesordernumber AS codice_documento, sales.orderdate AS  dataordine, product.englishproductdescription AS nome_prodotto, productcategory.Englishproductcategoryname AS categoria_prodotto, region.englishregiondescription AS region ,country.englishcountrydescription AS stato, (DATEDIFF(CURRENT_DATE, sales.orderdate) > 180) AS over_180_days
FROM productcategory inner join  product on productcategory.IDproductcategory = product.IDproductcategory
inner join sales on product.IDproduct = sales.IDproduct
inner join region on sales.IDregion = region.IDregion
inner join country on region.IDcountry = country.IDcountry
;
-- lo 0 indica che la funzione è vera mentre 1 che è falsa.

-- 3) Esporre l’elenco dei prodotti che hanno venduto, in totale, una quantità maggiore della media delle vendite realizzate nell’ultimo anno censito. (ogni valore della condizione deve risultare da una query e non deve essere inserito a mano). Nel result set devono comparire solo il codice prodotto e il totale venduto.
-- codice prodotto e il totale venduto 

-- SELECT IDproduct, SUM(orderquantity) AS Quantità_Totale_Venduta
-- FROM sales
-- WHERE YEAR(orderdate) = (SELECT MAX(YEAR(orderdate)) FROM sales)  -- Filtra solo l'anno più recente
-- GROUP BY IDproduct
-- HAVING SUM(orderquantity) > (
    -- SELECT AVG(SUM(orderquantity))  -- Calcola la media delle vendite totali per prodotto
    -- FROM sales
   --  WHERE YEAR(orderdate) = (SELECT MAX(YEAR(orderdate)) FROM sales)  
    -- GROUP BY IDproduct );
    
    
-- 4)	Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno

SELECT product.englishproductdescription AS elenco_prodotti_venduti, sum(sales.sales_amount) as fatturato_totale_peranno, YEAR(sales.orderdate) as annualità
from sales join product on sales.IDproduct= product.IDproduct
GROUP by product.englishproductdescription, annualità
; 
-- in questo caso essedo l'IDproduct all'interno della tabella sales, allora questi sono già prodotti che sono stati venduti.

-- 5)Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.

SELECT sum(sales.sales_amount) as fatturato_totale, year(sales.orderdate) as annualità, country.englishcountrydescription as stato
FROM sales join region on region.IDregion = sales.IDregion
join country on country.IDcountry = region.IDcountry
GROUP by annualità, stato 
ORDER by annualità DESC, fatturato_totale DESC;

-- 6)Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?

SELECT sales.IDproduct as IDprodotti , sum(sales.orderquantity) as RichiestaMercato, YEAR(orderdate)
FROM sales 
GROUP by IDprodotti, year(orderdate)
Order by year(orderdate) DESC, RichiestaMercato DESC
;

-- nel 2025 i prodotti maggiormente richiesti sono IDprodotti 4 ; 3 ; 8. 

-- 7)	Rispondere alla seguente domanda: 	 Proponi due approcci risolutivi differenti.

SELECT product.IDproduct, product.englishproductdescription as descrizione_prodotto_invenduto
FROM product left join sales on product.IDproduct = sales.IDproduct
where sales.orderquantity IS NULL
-- se unisco le tabelle product e sales facendo un left join e gli dico di dirmi quali sono i prodotti dove l'orderquantity è uguale a 0
;
-- secondo approccio 


-- 8)	Creare una vista sui prodotti in modo tale da esporre una “versione denormalizzata” delle informazioni utili (codice prodotto, nome prodotto, nome categoria)
-- codice prodotto, nome prodotto, nome categoria

CREATE VIEW Info_Prodotti AS 
SELECT product.IDproduct As codice_prodotto, product.englishproductdescription AS nome_prodotto, productcategory.Englishproductcategoryname AS nome_categoria
FROM product join productcategory on productcategory.IDproductcategory = product.IDproductcategory
ORDER BY codice_prodotto
;

-- 9)	Creare una vista per le informazioni geografiche

CREATE VIEW Info_Geografiche AS
SELECT country.englishcountrydescription as Stati , region.englishregiondescription as Region
from country inner join region on country.IDcountry = region.IDcountry
;






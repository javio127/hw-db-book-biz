-- Books per author --

SELECT 
	Authors.Name,
	Books.AuthorID,
	COUNT(DISTINCT ISBN) AS num_books
FROM
	Books
LEFT OUTER JOIN 
 	Authors ON Books.AuthorID = Authors.AuthorID
GROUP BY 
    Books.AuthorID

-- Authors per book --  
SELECT 
	Authors.Name, COUNT(DISTINCT Books.AuthorID) AS num_authors, Books.ISBN
FROM 
 	Books
LEFT OUTER JOIN
 	Authors ON Books.AuthorID = Authors.AuthorID
GROUP BY
    Books.ISBN

-- Author royalties on a book --

SELECT
	Books.Royalty, Authors.Name
FROM
    Books
LEFT OUTER JOIN
	Authors ON Books.AuthorID = Authors.AuthorID


-- Book royalties per author -- 

SELECT
 	Books.Royalty, Authors.Name
FROM
    Books
LEFT OUTER JOIN
 	Authors ON Books.AuthorID = Authors.AuthorID

-- Books in a genre

SELECT
   Books.Genre, Books.Title
FROM
   Books
GROUP BY
 	Books.Genre, Books.Title


-- Books published by a publisher-- 

SELECT
 	Books.Title as BookTitles, Books.PublisherID, Publishers.PublisherName
FROM
 	Books
LEFT OUTER JOIN
 	Publishers ON Books.PublisherID = Publishers.PublisherID

-- Editors per book -- 

SELECT
   Editors.Name, Books.EditorID, Books.Title
FROM
   Books
LEFT OUTER JOIN
   Editors ON Books.EditorID = Editors.EditorID


-- Books per Editor -- 
     
SELECT
	 Books.EditorID, Books.ISBN
FROM 
 	Books


-- Books in an Order --

SELECT
	Orders.OrderID, Orders.ISBN
FROM 
    Orders


-- Orders for a book -- 

SELECT
	Orders.ISBN, COUNT(DISTINCT Orders.OrderID) as OrderCount
FROM	
	Orders
GROUP BY
	Orders.ISBN


-- Customer orders -- 

SELECT 
	Orders.CustomerID, Orders.OrderID, Orders.ISBN
FROM 
	Orders
 

	


-- Orders per customer --
SELECT 
	Orders.CustomerID, COUNT(Orders.OrderID) as OrderCount
FROM 
	Orders
GROUP BY 
	Orders.CustomerID






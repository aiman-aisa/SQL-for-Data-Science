--Q1) Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT TrackID,
Milliseconds 
FROM Tracks
WHERE Milliseconds >= '5000000'

--------------------------------------------------------------------------------------

--Q2) Find all the invoices whose total is between $5 and $15 dollars.

SELECT COUNT(*)
FROM Invoices
WHERE Total BETWEEN '5' AND '15' 

--------------------------------------------------------------------------------------

--Q3) Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY. 

SELECT *
FROM CUSTOMERS
WHERE State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY')

--------------------------------------------------------------------------------------

--Q4) Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT *
FROM Invoices
WHERE (CustomerID = 56 or CustomerID = 58) AND
(Total BETWEEN '1.00' AND '5.00')


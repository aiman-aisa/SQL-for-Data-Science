--Q1) Using a subquery, find the names of all the tracks for the album "Californication".

SELECT name
FROM tracks
WHERE AlbumId = (SELECT AlbumId
    FROM Albums 
    WHERE Title = 'Californication') 

--------------------------------------------------------------------------------------

--Q2) Find the total number of invoices for each customer along with the customer's full name, city and email.

SELECT c.FirstName, c.LastName, c.City, c.Email, COUNT(i.InvoiceId) as Total_Invoice
FROM invoices i 
LEFT JOIN customers c ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId

--------------------------------------------------------------------------------------

--Q3) Retrieve the track name, album, artistID, and trackID for all the albums. 

SELECT t.name, a.Title, a.artistID, t.TrackId
FROM Albums a 
INNER JOIN Tracks t ON a.AlbumId = t.AlbumId 

--------------------------------------------------------------------------------------

--Q4) Retrieve a list with the managers last name, and the last name of the employees who report to him or her.

SELECT M.LastName as Manager, E.LastName as Employee
FROM Employees M 
INNER JOIN Employees E ON E.ReportsTo = M.EmployeeId 

--------------------------------------------------------------------------------------

--Q5) Find the name and ID of the artists who do not have albums. 

SELECT Name as Artist, ArtistId, Title as Album
FROM (SELECT * 
    FROM Artists ar 
    LEFT JOIN Albums al ON ar.ArtistId = al.ArtistId)
WHERE AlbumId IS NULL

--------------------------------------------------------------------------------------

--Q6) Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.

SELECT FirstName, LastName FROM Employees
UNION
SELECT FirstName, LastName FROM Customers
ORDER BY LastName DESC 

--------------------------------------------------------------------------------------

--Q7) See if there are any customers who have a different city listed in their billing city versus their customer city.

SELECT c.CustomerId, c.City, i.BillingCity
FROM Customers c
INNER JOIN Invoices i ON c.CustomerId = i.CustomerId
WHERE c.City <> i.BillingCity


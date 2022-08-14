--Q1) Pull a list of customer ids with the customer’s full name, and address, 
--along with combining their city and country together. 
--Be sure to make a space in between these two and make it UPPER CASE. 
--(e.g. LOS ANGELES USA)

SELECT CustomerId
, FirstName || ' ' || LastName as FullName
, Address
, UPPER(City || ' ' || Country) as City_Country
FROM Customers

--------------------------------------------------------------------------------------

--Q2) Create a new employee user id by combining the first 4 letters of 
--the employee’s first name with the first 2 letters of the employee’s last name. 
--Make the new field lower case and pull each individual step to show your work.

SELECT FirstName
, LastName
, LOWER(SUBSTR(FirstName, 1, 4) || SUBSTR(LastName, 1, 2)) as userId
FROM Employees

--------------------------------------------------------------------------------------

--Q3) Show a list of employees who have worked for the company for 15 
--or more years using the current date function. Sort by lastname ascending. 

SELECT EmployeeId
, LastName
, FirstName
, HireDate
, CURRENT_DATE - HireDate as Working_Years 
FROM Employees
WHERE Working_Years >= 15
ORDER BY LastName ASC

--------------------------------------------------------------------------------------

--Q4) Profiling the Customers table, answer the following question.
-- Are there any columns with null values? Indicate any below. Select all that apply.

SELECT COUNT(*)
FROM Customers
WHERE Company is NULL;

-- Number of NULL rows in each column:
-- Adress = 0
-- Company = 49
-- Postal Code = 4
-- Phone = 1
-- FirstName = 0
-- Fax = 47

--------------------------------------------------------------------------------------

--Q5) Find the cities with the most customers and rank in descending order.

SELECT City
, COUNT(CustomerId) as Number_of_Customers
FROM Customers
GROUP BY City
ORDER BY Number_of_Customers DESC 

--------------------------------------------------------------------------------------

--Q6) Create a new customer invoice id by combining 
-- a customer’s invoice id with their first and last name while ordering your query 
-- in the following order: firstname, lastname, and invoiceID.

SELECT c.FirstName
,c.LastName
, i.InvoiceId
, c.FirstName || c.LastName || i.InvoiceId as new_InvoiceId
FROM Customers c 
INNER JOIN Invoices i ON c.CustomerId = i.CustomerId
WHERE new_InvoiceId LIKE 'AstridGruber%'

--------------------------------------------------------------------------------------

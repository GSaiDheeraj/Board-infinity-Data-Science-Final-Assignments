/*Question 1*/
SELECT ProductName, QuantityPerUnit 
FROM Products;

/*Question 2*/
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = "False"
ORDER BY ProductName;

/*Question 3*/
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = 1 
ORDER BY ProductName;

/*Question 4*/
SELECT ProductName, UnitPrice 
FROM Products 
ORDER BY UnitPrice DESC;

/*Question 5*/
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE (((UnitPrice)<20) AND ((Discontinued)=False))
ORDER BY UnitPrice DESC;

/*Question 6*/
SELECT ProductName, UnitPrice
FROM Products
WHERE (((UnitPrice)>=15 And (UnitPrice)<=25) 
AND ((Products.Discontinued)=False))
ORDER BY Products.UnitPrice DESC;

/*Question 7*/
SELECT DISTINCT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT avg(UnitPrice) FROM Products)
ORDER BY UnitPrice;

/*Question 8*/
SELECT DISTINCT ProductName as Twenty_Most_Expensive_Products, UnitPrice
FROM Products AS a
WHERE 20 >= (SELECT COUNT(DISTINCT UnitPrice)
                    FROM Products AS b
                    WHERE b.UnitPrice >= a.UnitPrice)
ORDER BY UnitPrice desc;

/*Question 9*/
SELECT Count(ProductName)
FROM Products
GROUP BY Discontinued;

/*Question 10*/
SELECT ProductName,  UnitsOnOrder , UnitsInStock
FROM Products
WHERE (((Discontinued)=False) AND ((UnitsInStock)<UnitsOnOrder));
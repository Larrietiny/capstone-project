use northeind;
select * from order_details;
select * from list_of_orders;
SELECT SUM(Profit) AS Total_Profit
FROM order_details;
SELECT AVG(Amount) AS Average_Order_Value
FROM order_details;
SELECT Category, SUM(Amount) AS Total_Sales
FROM order_details
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Category, SUM(Amount) AS Total_Sales
FROM order_details
GROUP BY Category
ORDER BY Total_Sales ASC;
SELECT Category, SUM(Amount) AS Total_Sales
FROM order_details
GROUP BY Category
ORDER BY Total_Sales DESC
LIMIT 2;
SELECT Category, Sub_Category, SUM(Amount) AS Total_Sales
FROM order_details
GROUP BY Category, Sub_Category
ORDER BY Total_Sales DESC;

SELECT Category, SUM(Profit) / SUM(Amount) AS Profit_Margin
FROM order_details
GROUP BY Category
ORDER BY Profit_Margin DESC;
SELECT Category, AVG(Amount) AS Average_Order_Value
FROM order_details
GROUP BY Category
ORDER BY Average_Order_Value DESC;

SELECT Order_ID, SUM(Amount) AS Total_Sales
FROM order_details
GROUP BY Order_ID
ORDER BY Total_Sales DESC;
SELECT Sub_Category, SUM(Amount) AS Total_Sales, SUM(Quantity) AS Total_Quantity
FROM order_details
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

SELECT c.City, SUM(o.Amount) AS Total_Sales
FROM Order_details o
JOIN Customer_Name c ON o.Order_ID = c.Order_ID
GROUP BY c.City;

SELECT Order_Date, COUNT(Order_ID) AS Total_Orders
FROM list_of_orders
GROUP BY Order_Date;

SELECT State, COUNT(Order_ID) AS Number_of_Orders
FROM list_of_orders
GROUP BY State;

SELECT State, COUNT(Order_ID) AS Number_of_Orders
FROM list_of_orders
GROUP BY State
ORDER BY Number_of_Orders DESC
LIMIT 3;























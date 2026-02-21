-- 1327. List the Products Ordered in a Period


SELECT p.product_name, SUM(o.unit) unit  
FROM Products p 
RIGHT JOIN Orders o 
ON p.product_id = o.product_id  
WHERE  MONTH(o.order_date)=2 AND YEAR(o.order_date)='2020'
GROUP BY o.product_id   
HAVING unit>=100 
;   



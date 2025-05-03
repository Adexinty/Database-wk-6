-- Select employee details and officeCode using INNER JOIN with offices
SELECT employees.firstName, employees.lastName, employees.email, employees.officeCode
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode;

-- Select product details using LEFT JOIN with productlines
SELECT products.productName, products.productVendor, products.productLine
FROM products
LEFT JOIN productlines ON products.productLine = productlines.productLine;

-- Select order details for first 10 orders using RIGHT JOIN with customers
SELECT orders.orderDate, orders.shippedDate, orders.status, orders.customerNumber
FROM customers
RIGHT JOIN orders ON customers.customerNumber = orders.customerNumber
LIMIT 10;

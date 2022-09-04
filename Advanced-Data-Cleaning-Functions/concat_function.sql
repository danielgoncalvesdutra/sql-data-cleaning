/*Concatenating the product_code and the product_color to find out wich color couches are the more popular.*/
SELECT
    CONCAT(product_code, product_color) AS new_product_code
FROM
    customer_data.customer_purchase
WHERE
    product = 'couch'
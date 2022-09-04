/*Using COALESCE to change null values in the product column to the values in the product_code column*/
SELECT
    COALESCE(product, product_code) AS product_info
FROM
    customer_data.customer_purchase
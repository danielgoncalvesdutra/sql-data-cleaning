/*Using substring function to get the 'customer_id' if the first two letters in the column country are 'US'*/
SELECT
   DISTINCT customer_id
FROM
    customer_data.customer_address
WHERE
    SUBSTR(country,1,2) = 'US'
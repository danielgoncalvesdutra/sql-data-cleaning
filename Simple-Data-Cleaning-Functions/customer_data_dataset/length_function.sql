/*Getting the length of the text strings in the column country*/
SELECT 
    LENGTH(country) AS letters_in_country 
FROM 
    customer_data.customer_address

/*Checking which coutries have more then 2 letters in the text string*/
SELECT
    country
FROM
    customer_data.customer_address
WHERE
    LENGTH(country) > 2


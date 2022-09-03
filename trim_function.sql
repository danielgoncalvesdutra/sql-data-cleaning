/*Using length function to get all values in the 'state' column that have more than two letters*/
SELECT
    state
FROM
    customer_data.customer_address
WHERE
    LENGTH(state) > 2

/*Using trim function to get the customer_id from all clients that live in 'OH'*/
SELECT
    DISTINCT customer_id
FROM
    customer_data.customer_address
WHERE
    TRIM(state) = 'OH'

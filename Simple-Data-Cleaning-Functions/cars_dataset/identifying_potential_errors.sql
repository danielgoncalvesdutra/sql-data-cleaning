/*Checking for any misspelling errors in the num_of_cylinders column.*/
SELECT
    DISTINCT num_of_cylinders
FROM
    cars.car_info;

/*Fixing the misspelling 'tow' to 'two'*/
UPDATE
    cars.car_info
SET
    num_of_cylinders = "two"
WHERE
    num_of_cylinders = "tow";

/*Cheking if the compression_ratio column values range from 7 to 23.*/
SELECT
    MIN(compression_ratio) AS min_compression_ratio,
    MAX(compression_ratio) AS max_compression_ratio
FROM
    cars.car_info;

/*This returns a maximum of 70. But we know this is an error because the maximum value in this
column should be 23, not 70. So the 70 is most likely a 7.0. Run the above query again without
the row with 70 to make sure that the rest of the values fall within the expected range of 7 to 23.*/
SELECT
    MIN(compression_ratio) AS min_compression_ratio,
    MAX(compression_ratio) AS max_compression_ratio
FROM
    cars.car_info;
WHERE
    compression_ratio <> 70;

/*Now the highest value is 23, which aligns with the data description. So you’ll want to correct the 70 value.
You check with the sales manager again, who says that this row was made in error and should be removed. Before
you delete anything, you should check to see how many rows contain this erroneous value as a precaution so that
you don’t end up deleting 50% of your data. If there are too many (for instance, 20% of your rows have the incorrect 70 value)
then you would want to check back in with the sales manager to inquire if these should be deleted or if the 70 should be updated
to another value. Use the query below to count how many rows you would be deleting:*/
SELECT
    COUNT(*) AS num_of_rows_to_delete
FROM
    cars.car_info
WHERE
    compression_ratio = 70;

/*Turns out there is only one row with the erroneous 70 value. So you can delete that row using this query:*/
DELETE cars.car_info
WHERE compression_ratio = 70;

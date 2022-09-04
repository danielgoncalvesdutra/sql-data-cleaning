/*Finally, you want to check your data for any inconsistencies that might cause errors. These inconsistencies can be tricky
 to spot — sometimes even something as simple as an extra space can cause a problem.
Check the drive_wheels column for inconsistencies by running a query with a SELECT DISTINCT statement: */

SELECT
    DISTINCT drive_wheels
FROM
    cars.car_info;

/*It appears that 4wd appears twice in results. However, because you used a SELECT DISTINCT statement to return unique values,
 this probably means there’s an extra space in one of the 4wd entries that makes it different from the other 4wd. 
To check if this is the case, you can use a LENGTH statement to determine the length of how long each of these string variables: */

SELECT
    DISTINCT drive_wheels,
    LENGTH(drive_wheels) AS string_length
FROM
    cars.car_info;

/*According to these results, some instances of the 4wd string have four characters instead of the expected three (4wd has 3 characters).
 In that case, you can use the TRIM function to remove all extra spaces in the drive_wheels column if you are using the BigQuery free trial: */

UPDATE
    cars.car_info
SET
    drive_wheels = TRIM(drive_wheels)
WHERE TRUE;

/*Then, you run the SELECT DISTINCT statement again to ensure that there are only three distinct values in the drive_wheels column: */

SELECT
    DISTINCT drive_wheels
FROM
    cars.car_info;

/*And now there should only be three unique values in this column! Which means your data is clean, consistent, and ready for analysis! */
/*Cheking if the minimum and maximum lengths in the dataset align with the data description, which states that the lenghts in this column should range from 141.1 and 208.1*/
SELECT
    MIN(length) AS min_length,
    MAX(length) AS max_length
FROM
    cars.car_info;
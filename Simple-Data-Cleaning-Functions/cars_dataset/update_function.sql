/*Getting all columns from the table car_info where num_of_doors is null*/
SELECT
    *
FROM
    cars.car_info
WHERE
    num_of_doors IS NULL;

/*Updating all Dodge gas sedans to have four doors*/
UPDATE
    cars.car_info
SET
    num_of_doors = "four"
WHERE
    make = "dodge"
    AND fuel_type = "gas"
    AND body_style = "sedan";

/*Updating all Mazda diesel sedans sold to have four doors*/
UPDATE
    cars.car_info
SET
    num_of_doors = "four"
WHERE
    make = "mazda"
    AND fuel_type = "diesel"
    AND body_style = "sedan";
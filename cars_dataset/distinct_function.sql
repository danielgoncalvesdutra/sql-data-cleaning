/*Checking if the fuel_type column has only two unique string values: diesel and gas*/
SELECT 
    DISTINCT fuel_type
 FROM 
    cars.car_info
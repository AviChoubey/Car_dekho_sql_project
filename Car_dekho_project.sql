-- Create schema
CREATE SCHEMA IF NOT EXISTS cars;
USE cars;

-- (Assumption: Table already exists with relevant data)
-- SELECT all data
SELECT * FROM cars.car_dekho;

-- 1. Total number of cars
SELECT COUNT(*) FROM cars.car_dekho;

-- 2. Cars available in 2023
SELECT COUNT(*) FROM cars.car_dekho
WHERE year = 2023;

-- 3. Cars available in 2020, 2021 & 2022
SELECT COUNT(*) FROM cars.car_dekho
WHERE year IN (2020, 2021, 2022);

-- 4. Count for each of 2020, 2021 & 2022
SELECT year, COUNT(*) FROM cars.car_dekho
WHERE year IN (2020, 2021, 2022)
GROUP BY year;

-- 5. Cars available grouped by year
SELECT year, COUNT(*) FROM cars.car_dekho
GROUP BY year;

-- 6. Diesel cars in 2020
SELECT COUNT(*) FROM cars.car_dekho
WHERE year = 2020 AND fuel = 'Diesel';

-- 7. Cars grouped by fuel and year
SELECT year, fuel, COUNT(*) FROM cars.car_dekho
GROUP BY year, fuel;

-- 8. Years where car count > 100
SELECT year, COUNT(*) FROM cars.car_dekho
GROUP BY year
HAVING COUNT(*) > 100;

-- 9. Car details between 2015 and 2023 (two methods)
SELECT COUNT(*) FROM cars.car_dekho
WHERE year BETWEEN 2015 AND 2023;

SELECT COUNT(*) FROM cars.car_dekho
WHERE year >= 2015 AND year <= 2023;

-- 10. All car rows between 2015 and 2023
SELECT * FROM cars.car_dekho
WHERE year BETWEEN 2015 AND 2023;
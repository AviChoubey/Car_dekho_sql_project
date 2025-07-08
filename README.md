# 🚗 Car Dekho SQL Project

This project is a SQL-based analysis of a used car sales dataset inspired by CarDekho. It answers several key business questions like year-wise availability, fuel type breakdowns, and high-volume years using MySQL queries.

---

## 📦 Dataset Overview

- **Table name**: `car_dekho`
- **Database**: `cars`
- **Columns used**:
  - `year` – Year of the car model
  - `fuel` – Fuel type (e.g., Diesel, Petrol, CNG)
  - *(You can extend with price, brand, km driven, etc.)*

---

## 🛠️ Technologies Used

- **MySQL** (tested on MySQL 8+)
- Simple SQL queries: `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `COUNT`, `BETWEEN`, etc.

---

## 🔍 Key SQL Insights

| Question | Description |
|----------|-------------|
| ✅ Total cars | Count all entries in the dataset |
| ✅ Cars by year | How many cars are listed each year |
| ✅ Cars from 2020–2022 | Filtered by range and individual breakdown |
| ✅ Diesel cars in 2020 | Fuel-type-based filtering |
| ✅ Fuel type by year | Grouped insights for fuel usage |
| ✅ Years with >100 cars | Business-relevant high-volume years |
| ✅ Cars between 2015–2023 | Filtered with `BETWEEN` and date comparisons |

---

## 📊 Example Queries

```sql
-- Total number of cars
SELECT COUNT(*) FROM cars.car_dekho;

-- Cars available in 2023
SELECT COUNT(*) FROM cars.car_dekho WHERE year = 2023;

-- Cars by fuel type and year
SELECT year, fuel, COUNT(*) FROM cars.car_dekho GROUP BY year, fuel;

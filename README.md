# Nepal Census SQL Project

This repository contains a set of SQL views and queries built to analyze census data from Nepal. The data is stored in a SQLite database file named `census.db`, which contains a single table: `census`.

## 📄 `census` Table Structure

| Column      | Description                                                      |
|-------------|------------------------------------------------------------------|
| `id`        | Unique identifier for each census record                         |
| `district`  | Name of the district                                             |
| `locality`  | Name of the locality within the district                         |
| `families`  | Number of families                                               |
| `households`| Number of households (can include multiple families)             |
| `population`| Total population                                                 |
| `male`      | Number of people identified as male                              |
| `female`    | Number of people identified as female                            |

---

## 📁 Included Files

- `rural.sql`: Creates a view with records from localities that include "rural" in their name.
- `total.sql`: Creates a view that sums all numeric columns across the entire country.
- `by_district.sql`: Creates a view that sums numeric data grouped by district.
- `most_populated.sql`: Creates a view that lists districts ordered by total population (from most to least).
- `census.db`: The SQLite database file containing the census data.
- `README.md`: This file.

---

## 🧠 Example Queries

- Creating a view group by districts:
  ```sql
  CREATE VIEW "by_district" AS
  SELECT
  "district",
  SUM("families") AS "families",
  SUM("households") AS "total_households",
  SUM("population") AS "total_population",
  SUM("male") AS "total_male",
  SUM("female") AS "total_female"
  FROM "census"
  GROUP BY "district";

- Using the view by_district to find the second least populated district by number of families:
  ```sql
  SELECT "district", "total_families"
  FROM "by_district"
  ORDER BY "total_families" ASC
  LIMIT 1 OFFSET 1;

## 🛠 Requirements

- SQLite to run the SQL queries locally.
- A database viewer such as DB Browser for SQLite, DBeaver, or Azure Data Studio.

## 📌 Author
This project was created as a practice exercise for SQL queries using real-world census data.




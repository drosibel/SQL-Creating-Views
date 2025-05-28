-- Creating a view named by_district which contain the sums for each numeric column in census, grouped by district.
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


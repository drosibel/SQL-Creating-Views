-- Creating a view named total which contain the sums for each numeric column in census, across all districts and localities.
CREATE VIEW "total" AS
SELECT
SUM("families") AS "families",
SUM("households") AS "households",
SUM("population") AS "total_population",
SUM("male") AS "total_male",
SUM("female") AS "total_female"
FROM "census";

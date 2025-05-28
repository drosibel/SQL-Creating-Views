-- Creating a view named most_populated which contain, in order from greatest to least, the most populated districts in Nepal.
CREATE VIEW "most_populated" AS
SELECT
"district",
SUM("families") AS "total_families",
SUM("households") AS "total_households",
SUM("population") AS "total_population",
SUM("male") AS "total_male",
SUM("female") AS "total_female"
FROM "census"
GROUP BY "district"
ORDER BY "total_population" DESC;


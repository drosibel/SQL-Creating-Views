-- Creating a view named rural which contain all census records relating to a rural municipality (identified by including “rural” in their name).
--Ensure the view contains all of the columns from the census table.
CREATE VIEW "rural" AS
SELECT * FROM "census" WHERE "locality" LIKE '%Rural%';


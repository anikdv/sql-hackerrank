SELECT SUM("POPULATION")
  FROM "CITY"
 WHERE EXISTS(SELECT *
                FROM "COUNTRY"
               WHERE "CITY"."COUNTRYCODE" = "COUNTRY"."CODE"
                     AND "COUNTRY"."CONTINENT" = 'Asia');

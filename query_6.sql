SELECT "NAME"
  FROM "CITY"
 WHERE EXISTS(SELECT *
                FROM "COUNTRY"
               WHERE "CITY"."COUNTRYCODE" = "COUNTRY"."CODE"
                     AND "COUNTRY"."CONTINENT" = 'Africa')
 ORDER BY "NAME";

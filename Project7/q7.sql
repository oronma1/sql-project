SELECT wid,wname
FROM animal NATURAL JOIN treatment NATURAL JOIN vet NATURAL JOIN atypes
GROUP BY wid,wname
HAVING COUNT (DISTINCT family) = (select COUNT (DISTINCT family)
                                  from atypes)
 

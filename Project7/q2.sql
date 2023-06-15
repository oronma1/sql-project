select DISTINCT wid,wname
from animal NATURAL JOIN treatment NATURAL JOIN vet
WHERE atype = 'Tiger'
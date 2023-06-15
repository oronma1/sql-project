select family,COUNT(*)
from animal a1 NATURAL JOIN atypes a2
WHERE atime = 'Diurnal'
GROUP by family
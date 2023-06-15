SELECT family
from animal NATURAL JOIN atypes
GROUP by family
HAVING count (family) > 4
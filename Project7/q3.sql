select a2.aname,a2.aid
from animal a1, animal a2
WHERE a1.cno=a2.cno and a1.atype= 'Sheep'
and a2.atype != 'Sheep' and a1.cno not in (select cno 
											from animal
											WHERE atype = 'Gazelle')

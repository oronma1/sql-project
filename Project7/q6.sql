 with help as   (SELECT cno,COUNT(*) as c
 				from cage c2 natural join animal a2 
 				WHERE c2.cno not in (select cno 
	   								from animal NATURAL join atypes --הכלובים ללא הציפורים
	  			 					WHERE family = 'Bird')
				GROUP by cno)
SELECT cno,size
from help NATURAL JOIN cage
WHERE help.c >= all (select max(c)
                     from help)
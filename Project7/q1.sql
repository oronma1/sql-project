SELECT wid,wname
from worker
WHERE (date_part('YEAR',CURRENT_DATE) - 60)= worker.byear
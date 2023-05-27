DROP FUNCTION IF EXISTS trigf1() CASCADE;

CREATE FUNCTION trigf1() returns TRIGGER AS $$
BEGIN
IF	(new.type = 'clean') AND
	(SELECT COUNT(*) as number_of_clean
     from schedule
     WHERE new.wid = wid AND new.type = type AND new.date = date) > 3	THEN
     	BEGIN
     	raise notice 'to much';
        return NULL;
        end;
ELSE
	return NEW;
    end if;
    end;
$$ language plpgsql;



CREATE TRIGGER T1 
BEFORE INSERT or UPDATE on schedule 
for EACH STATEMENT
EXECUTE PROCEDURE trigf1();


create materialized view if not exists mv92 as select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, name.gender AS gender, name.name AS name_name_3
from aka_name, name
 where (aka_name.person_id = name.id) And (name.name like '%An%')  And  (name.gender = 'f')
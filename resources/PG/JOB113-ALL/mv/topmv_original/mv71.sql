select aka_name.name AS name, aka_name.person_id AS person_id, info_type.id AS id, info_type.info AS info, person_info.note AS note
from aka_name, info_type, person_info
 where (aka_name.name like '%a%') And (aka_name.person_id = person_info.person_id) And (info_type.info = 'mini biography') And (person_info.info_type_id = info_type.id) And (person_info.note = 'Volker Boehm')
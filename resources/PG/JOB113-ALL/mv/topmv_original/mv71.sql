select aka_name.name AS name, aka_name.person_id AS person_id, info_type.id AS id, info_type.info AS info, person_info.note AS note
 from person_info,aka_name,info_type
 where (aka_name.person_id = person_info.person_id) And (person_info.info_type_id = info_type.id) And (person_info.note = 'Volker Boehm') And (aka_name.name like '%a%') And (info_type.info = 'mini biography')
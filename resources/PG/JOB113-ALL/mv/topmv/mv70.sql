create materialized view if not exists mv70 as select info_type.id AS id, info_type.info AS info, person_info.note AS note, person_info.person_id AS person_id
 from person_info,info_type
 where (person_info.info_type_id = info_type.id) And (person_info.note = 'Volker Boehm') And (info_type.info = 'mini biography')
create materialized view if not exists mv58 as select info_type.id AS id, info_type.info AS info_type_info_1, person_info.info AS person_info_info_2, person_info.note AS note, person_info.person_id AS person_id
 from info_type,person_info
 where (info_type.id = person_info.info_type_id) And (info_type.info = 'mini biography') And (person_info.note IS NOT NULL)
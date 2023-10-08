create materialized view if not exists mv60 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, info_type.id AS id, info_type.info AS info_type_info_3, name.gender AS gender, name.name AS name, name.name_pcode_cf AS name_pcode_cf, person_info.info AS person_info_info_7, person_info.note AS note
 from info_type,name,person_info,cast_info
 where (person_info.info_type_id = info_type.id) And (info_type.info = 'mini biography') And (name.id = person_info.person_id) And (cast_info.person_id = name.id) And (person_info.note IS NOT NULL)
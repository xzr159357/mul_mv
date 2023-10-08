create materialized view if not exists mv57 as select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, info_type.info AS info, link_type.id AS id, link_type.link AS link, name.gender AS gender, name.name AS name_name_7, name.name_pcode_cf AS name_pcode_cf, person_info.info_type_id AS info_type_id, person_info.note AS note, title.production_year AS production_year, title.title AS title
 from link_type,person_info,movie_link,info_type,title,name,aka_name,cast_info
 where (movie_link.link_type_id = link_type.id) And (link_type.link = 'features') And (person_info.person_id = aka_name.person_id) And (person_info.person_id = cast_info.person_id) And (info_type.id = person_info.info_type_id) And (person_info.note = 'Volker Boehm') And (title.id = movie_link.linked_movie_id) And (info_type.info = 'mini biography') And (cast_info.movie_id = title.id) And (name.id = cast_info.person_id) And (aka_name.person_id = name.id) And (aka_name.name like '%a%')
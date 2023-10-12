create materialized view if not exists mv76 as select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, info_type.info AS info, link_type.id AS link_type_id_4, link_type.link AS link, name.gender AS gender, name.name AS name_name_7, name.name_pcode_cf AS name_pcode_cf, person_info.info_type_id AS info_type_id, person_info.note AS note, title.id AS title_id_11, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, info_type, link_type, movie_link, name, person_info, title
 where (aka_name.name like '%a%') And (aka_name.person_id = person_info.person_id) And (cast_info.person_id = name.id) And (info_type.info = 'mini biography') And (link_type.link = 'features') And (movie_link.link_type_id = link_type.id) And (movie_link.linked_movie_id = cast_info.movie_id) And (name.id = aka_name.person_id) And (person_info.info_type_id = info_type.id) And (person_info.note = 'Volker Boehm') And (title.id = cast_info.movie_id)
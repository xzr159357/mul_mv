select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, info_type.id AS info_type_id_3, info_type.info AS info, link_type.id AS link_type_id_5, link_type.link AS link, name.gender AS gender, name.name AS name_name_8, name.name_pcode_cf AS name_pcode_cf, person_info.note AS note, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, info_type, link_type, movie_link, name, person_info, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = title.id) And (info_type.id = person_info.info_type_id) And (link_type.link = 'features') And (movie_link.link_type_id = link_type.id) And (name.id = aka_name.person_id) And (name.id = cast_info.person_id) And (name.id = person_info.person_id) And (person_info.person_id = cast_info.person_id) And (title.id = movie_link.linked_movie_id)
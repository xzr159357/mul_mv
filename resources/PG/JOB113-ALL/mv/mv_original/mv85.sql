select aka_name.name AS aka_name_name_0, info_type.info AS info_type_info_1, link_type.id AS link_type_id_2, link_type.link AS link, movie_link.linked_movie_id AS linked_movie_id, name.gender AS gender, name.name AS name_name_6, name.name_pcode_cf AS name_pcode_cf, person_info.info AS person_info_info_8, person_info.info_type_id AS info_type_id, person_info.note AS note, title.id AS title_id_11, title.production_year AS production_year
from aka_name, cast_info, info_type, link_type, movie_link, name, person_info, title
 where (aka_name.name IS NOT NULL)  And  (((aka_name.name like '%a%')) Or ((aka_name.name like 'A%'))) And (aka_name.person_id = name.id) And (cast_info.person_id = name.id) And (info_type.info = 'mini biography') And (link_type.link in ('references', 'referenced in', 'features', 'featured in')) And (movie_link.link_type_id = link_type.id) And (movie_link.linked_movie_id = cast_info.movie_id) And (name.id = aka_name.person_id) And (name.id = person_info.person_id) And (person_info.info_type_id = info_type.id) And (person_info.note IS NOT NULL) And (title.id = cast_info.movie_id)
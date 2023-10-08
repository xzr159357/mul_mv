select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, info_type.id AS info_type_id_2, info_type.info AS info, link_type.id AS link_type_id_4, link_type.link AS link, person_info.note AS note, title.production_year AS production_year, title.title AS title
 from person_info,title,info_type,cast_info,link_type,movie_link
 where (person_info.person_id = cast_info.person_id) And (info_type.id = person_info.info_type_id) And (person_info.note = 'Volker Boehm') And (title.id = movie_link.linked_movie_id) And (cast_info.movie_id = title.id) And (info_type.info = 'mini biography') And (movie_link.link_type_id = link_type.id) And (link_type.link = 'features')
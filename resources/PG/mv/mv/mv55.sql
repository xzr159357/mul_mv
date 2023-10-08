create materialized view if not exists mv55 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, info_type.id AS info_type_id_2, info_type.info AS info, link_type.id AS link_type_id_4, link_type.link AS link, person_info.note AS note, title.production_year AS production_year, title.title AS title
 from link_type,person_info,movie_link,info_type,title,cast_info
 where (movie_link.link_type_id = link_type.id) And (link_type.link = 'features') And (person_info.person_id = cast_info.person_id) And (info_type.id = person_info.info_type_id) And (person_info.note = 'Volker Boehm') And (title.id = movie_link.linked_movie_id) And (info_type.info = 'mini biography') And (cast_info.movie_id = title.id)
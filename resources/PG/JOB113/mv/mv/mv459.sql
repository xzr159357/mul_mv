create materialized view if not exists mv459 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, comp_cast_type.id AS comp_cast_type_id_3, comp_cast_type.kind AS kind, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_6, info_type.info AS info_type_info_7, keyword.id AS keyword_id_8, keyword.keyword AS keyword, movie_info_idx.info AS movie_info_idx_info_10, movie_keyword.movie_id AS movie_keyword_movie_id_11, name.gender AS gender, name.name AS name, title.production_year AS production_year, title.title AS title
 from movie_info_idx,keyword,comp_cast_type,title,info_type,complete_cast,cast_info,name,movie_keyword
 where (movie_info_idx.movie_id = title.id) And (info_type.id = movie_info_idx.info_type_id) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital')) And (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.id = complete_cast.subject_id) And (title.id = movie_keyword.movie_id) And (cast_info.movie_id = title.id) And (complete_cast.movie_id = title.id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (name.id = cast_info.person_id)
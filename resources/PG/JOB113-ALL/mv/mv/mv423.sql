create materialized view if not exists mv423 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, char_name.name AS name, comp_cast_type.id AS comp_cast_type_id_4, comp_cast_type.kind AS comp_cast_type_kind_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, kind_type.id AS kind_type_id_9, kind_type.kind AS kind_type_kind_10, movie_info_idx.info AS movie_info_idx_info_11, movie_info_idx.info_type_id AS info_type_id, movie_info_idx.movie_id AS movie_info_idx_movie_id_13, title.production_year AS production_year, title.title AS title
 from movie_keyword,complete_cast,cast_info,keyword,title,movie_info_idx,kind_type,char_name,comp_cast_type,info_type
 where (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (comp_cast_type.id = complete_cast.status_id) And (complete_cast.subject_id = comp_cast_type.id) And (title.id = complete_cast.movie_id) And (cast_info.movie_id = title.id) And (char_name.id = cast_info.person_role_id) And (movie_info_idx.movie_id = title.id) And (kind_type.id = title.kind_id) And (movie_info_idx.info > '8.0') And (info_type.id = movie_info_idx.info_type_id) And (comp_cast_type.kind like '%complete%') And (comp_cast_type.kind = 'cast')
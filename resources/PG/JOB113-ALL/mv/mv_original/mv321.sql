select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, comp_cast_type.id AS comp_cast_type_id_3, comp_cast_type.kind AS comp_cast_type_kind_4, complete_cast.subject_id AS subject_id, keyword.id AS keyword_id_6, keyword.keyword AS keyword, kind_type.id AS kind_type_id_8, kind_type.kind AS kind_type_kind_9, title.production_year AS production_year, title.title AS title
 from movie_keyword,complete_cast,cast_info,keyword,title,kind_type,comp_cast_type
 where (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (title.id = complete_cast.movie_id) And (cast_info.movie_id = title.id) And (kind_type.id = title.kind_id) And (comp_cast_type.kind like '%complete%') And (comp_cast_type.kind = 'cast')
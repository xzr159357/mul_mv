create materialized view if not exists mv547 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS complete_cast_movie_id_2, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, movie_info_idx.info AS movie_info_idx_info_6, movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_keyword_movie_id_8, title.production_year AS production_year, title.title AS title
 from movie_keyword,complete_cast,title,movie_info_idx,comp_cast_type,info_type
 where (movie_keyword.movie_id = title.id) And (movie_info_idx.movie_id = complete_cast.movie_id) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (title.id = movie_info_idx.movie_id) And (info_type.id = movie_info_idx.info_type_id) And (comp_cast_type.kind in ('cast', 'crew')) And (comp_cast_type.kind = 'completeverified')
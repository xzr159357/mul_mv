create materialized view if not exists mv400 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS complete_cast_movie_id_2, complete_cast.subject_id AS subject_id, keyword.id AS keyword_id_4, keyword.keyword AS keyword, kind_type.id AS kind_type_id_6, kind_type.kind AS kind_type_kind_7, movie_info.info AS info, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_info_movie_id_10, title.production_year AS production_year, title.title AS title
 from comp_cast_type,movie_keyword,kind_type,title,movie_info,complete_cast,keyword
 where (complete_cast.status_id = comp_cast_type.id) And (comp_cast_type.kind = 'complete') And (title.id = movie_keyword.movie_id) And (complete_cast.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (kind_type.id = title.kind_id) And (movie_info.movie_id = title.id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American')) And (keyword.keyword in ('murder', 'murder-in-title', 'blood', 'violence'))
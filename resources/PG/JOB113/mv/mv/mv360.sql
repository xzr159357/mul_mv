create materialized view if not exists mv360 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, keyword.id AS keyword_id_4, keyword.keyword AS keyword, movie_info.info AS info, movie_link.link_type_id AS link_type_id, title.production_year AS production_year, title.title AS title
 from keyword,comp_cast_type,title,complete_cast,movie_keyword,movie_info,movie_link
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'sequel') And (comp_cast_type.id = complete_cast.subject_id) And (title.id = movie_keyword.movie_id) And (movie_link.movie_id = title.id) And (complete_cast.movie_id = movie_keyword.movie_id) And (comp_cast_type.id = complete_cast.status_id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.movie_id = movie_link.movie_id) And (movie_info.info in ('Sweden', 'Germany', 'Swedish', 'German'))
create materialized view if not exists mv111 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_companies.movie_id AS movie_companies_movie_id_3, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year
 from movie_keyword,title,cast_info,movie_companies
 where (movie_keyword.movie_id = cast_info.movie_id) And (movie_keyword.keyword_id = 7633) And (title.id = cast_info.movie_id) And (movie_companies.movie_id = title.id) And (cast_info.person_id < 2537845)  And  (cast_info.role_id = 1)
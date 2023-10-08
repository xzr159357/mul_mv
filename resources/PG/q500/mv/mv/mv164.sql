create materialized view if not exists mv164 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.role_id AS role_id, movie_info.movie_id AS movie_info_movie_id_2, movie_keyword.keyword_id AS keyword_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_keyword,movie_info,cast_info,movie_companies
 where (cast_info.movie_id = title.id) And (movie_companies.movie_id = title.id) And (movie_info.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (title.kind_id = 7)  And  (title.production_year = 2004) And (movie_keyword.keyword_id < 2909) And (cast_info.role_id < 2)
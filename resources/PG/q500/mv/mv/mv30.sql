create materialized view if not exists mv30 as select cast_info.movie_id AS cast_info_movie_id_0, movie_keyword.movie_id AS movie_keyword_movie_id_1, title.kind_id AS kind_id, title.production_year AS production_year
 from movie_keyword,title,cast_info,movie_companies
 where (movie_keyword.movie_id = title.id) And (cast_info.movie_id = title.id) And (movie_companies.movie_id = title.id) And (title.production_year > 2012)  And  (title.kind_id = 7)
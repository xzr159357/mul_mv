select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, movie_keyword.keyword_id AS keyword_id, name.name AS name, title.production_year AS production_year, title.title AS title
 from name,movie_keyword,title,cast_info
 where (name.id = cast_info.person_id) And (movie_keyword.movie_id = title.id) And (cast_info.movie_id = title.id) And (title.production_year > 2014)
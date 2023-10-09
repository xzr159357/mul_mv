select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, keyword.keyword AS keyword, name.name AS name, title.production_year AS production_year, title.title AS title
 from name,movie_keyword,cast_info,keyword,title
 where (name.id = cast_info.person_id) And (keyword.id = movie_keyword.keyword_id) And (movie_keyword.movie_id = title.id) And (cast_info.movie_id = title.id) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('superhero', 'sequel', 'second-part', 'marvel-comics', 'based-on-comic', 'tv-special', 'fight', 'violence')) And (title.id = movie_keyword.movie_id)
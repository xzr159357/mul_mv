select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, keyword.id AS id, keyword.keyword AS keyword, title.production_year AS production_year, title.title AS title
 from movie_keyword,title,cast_info,keyword
 where (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id) And (cast_info.movie_id = title.id) And (keyword.keyword in ('superhero', 'sequel', 'second-part', 'marvel-comics', 'based-on-comic', 'tv-special', 'fight', 'violence'))
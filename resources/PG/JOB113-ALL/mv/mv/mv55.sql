create materialized view if not exists mv55 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, keyword.id AS id, keyword.keyword AS keyword, name.name AS name
 from name,movie_keyword,keyword,cast_info
 where (cast_info.person_id = name.id) And (name.name like '%Downey%Robert%') And (cast_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'marvel-cinematic-universe')
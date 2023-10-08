select aka_name.name AS name, aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_2, keyword.keyword AS keyword, movie_companies.company_id AS company_id, movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_keyword_movie_id_6, title.episode_nr AS episode_nr, title.title AS title
 from keyword,title,movie_companies,cast_info,aka_name,name,movie_keyword
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'character-name-in-title') And (title.id = movie_keyword.movie_id) And (cast_info.movie_id = title.id) And (movie_companies.movie_id = cast_info.movie_id) And (name.id = cast_info.person_id) And (aka_name.person_id = name.id)
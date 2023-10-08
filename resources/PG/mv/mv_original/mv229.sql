select aka_name.name AS name, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS company_name_id_4, keyword.id AS keyword_id_5, keyword.keyword AS keyword, title.episode_nr AS episode_nr, title.title AS title
 from movie_companies,movie_keyword,title,name,aka_name,company_name,cast_info,keyword
 where (movie_companies.movie_id = cast_info.movie_id) And (company_name.id = movie_companies.company_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id) And (cast_info.movie_id = title.id) And (name.id = cast_info.person_id) And (aka_name.person_id = name.id) And (keyword.keyword = 'character-name-in-title')
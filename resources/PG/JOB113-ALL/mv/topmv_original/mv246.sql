select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, company_name.country_code AS country_code, company_name.id AS company_name_id_3, keyword.id AS keyword_id_4, keyword.keyword AS keyword, movie_companies.movie_id AS movie_companies_movie_id_6, name.name AS name, title.episode_nr AS episode_nr, title.title AS title
 from company_name,name,movie_keyword,cast_info,keyword,title,movie_companies
 where (movie_companies.company_id = company_name.id) And (company_name.country_code = '[us]') And (name.id = cast_info.person_id) And (title.id = movie_keyword.movie_id) And (movie_keyword.movie_id = movie_companies.movie_id) And (movie_keyword.keyword_id = keyword.id) And (cast_info.movie_id = title.id) And (keyword.keyword = 'character-name-in-title')
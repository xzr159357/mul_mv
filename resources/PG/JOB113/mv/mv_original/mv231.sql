select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, company_name.country_code AS country_code, company_name.id AS company_name_id_3, keyword.id AS keyword_id_4, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_keyword_movie_id_6, name.name AS name
 from keyword,title,movie_companies,cast_info,company_name,name,movie_keyword
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'character-name-in-title') And (title.id = movie_keyword.movie_id) And (cast_info.movie_id = title.id) And (movie_companies.movie_id = title.id) And (company_name.id = movie_companies.company_id) And (name.id = cast_info.person_id)
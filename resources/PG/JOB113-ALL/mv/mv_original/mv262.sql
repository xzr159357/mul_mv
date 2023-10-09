select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, keyword.keyword AS keyword, movie_companies.movie_id AS movie_companies_movie_id_3, movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_keyword_movie_id_5, name.name AS name
 from company_name,name,movie_keyword,cast_info,keyword,title,movie_companies
 where (company_name.id = movie_companies.company_id) And (cast_info.person_id = name.id) And (name.name like '%B%') And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id) And (cast_info.movie_id = title.id) And (cast_info.movie_id = movie_companies.movie_id) And (keyword.keyword = 'character-name-in-title') And (movie_companies.company_id = company_name.id)
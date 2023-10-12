select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, company_name.id AS company_name_id_2, keyword.id AS keyword_id_3, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_keyword_movie_id_5, name.name AS name
from cast_info, company_name, keyword, movie_companies, movie_keyword, name, title
 where (cast_info.movie_id = title.id) And (cast_info.person_id = name.id) And (company_name.id = movie_companies.company_id) And (keyword.keyword = 'character-name-in-title') And (movie_companies.movie_id = title.id) And (movie_keyword.keyword_id = keyword.id) And (name.name = '__LIKE__Z%') And (title.id = movie_keyword.movie_id)
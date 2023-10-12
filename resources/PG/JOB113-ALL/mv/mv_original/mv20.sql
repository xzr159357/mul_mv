select company_name.country_code AS country_code, company_name.id AS company_name_id_1, keyword.id AS keyword_id_2, keyword.keyword AS keyword, movie_companies.movie_id AS movie_id
from company_name, keyword, movie_companies, movie_keyword
 where (company_name.country_code = '[sm]') And (keyword.keyword = 'character-name-in-title') And (movie_companies.company_id = company_name.id) And (movie_keyword.keyword_id = keyword.id) And (movie_keyword.movie_id = movie_companies.movie_id)
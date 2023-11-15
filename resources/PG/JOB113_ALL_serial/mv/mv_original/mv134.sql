select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, keyword.id AS keyword_id_3, keyword.keyword AS keyword, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_link.link_type_id AS link_type_id
from company_name, keyword, movie_companies, movie_keyword, movie_link
 where (company_name.id = movie_companies.company_id) And (keyword.keyword in ('sequel', 'revenge', 'based-on-novel')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (movie_link.movie_id = movie_companies.movie_id) And (movie_link.movie_id = movie_keyword.movie_id)
select company_name.country_code AS country_code, company_name.id AS id, company_name.name AS name, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
 from movie_keyword,company_name,title,movie_companies
 where (title.id = movie_keyword.movie_id) And (movie_keyword.movie_id = movie_companies.movie_id) And (company_name.id = movie_companies.company_id) And (company_name.country_code = '[us]')  And  (company_name.name = 'YouTube') And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%')
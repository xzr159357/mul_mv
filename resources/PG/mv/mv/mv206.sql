create materialized view if not exists mv206 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
 from movie_companies,movie_keyword,title,company_type,company_name
 where (movie_keyword.movie_id = movie_companies.movie_id) And (company_name.id = movie_companies.company_id) And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%') And (company_type.id = movie_companies.company_type_id) And (title.id = movie_keyword.movie_id) And (company_name.country_code = '[us]')  And  (company_name.name = 'YouTube')
select company_name.country_code AS country_code, company_name.id AS id, company_name.name AS name, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note
 from movie_companies,company_name
 where (movie_companies.company_id = company_name.id) And (movie_companies.note IS NULL) And (company_name.country_code = '__NOTEQUAL__[pl]')  And  (((company_name.name like '%Film%')) Or ((company_name.name like '%Warner%')))
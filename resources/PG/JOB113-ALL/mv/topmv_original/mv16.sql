select company_name.country_code AS country_code, company_name.id AS id, company_name.name AS name, movie_companies.movie_id AS movie_id
 from movie_companies,company_name
 where (movie_companies.company_id = company_name.id) And (company_name.country_code = '[nl]')
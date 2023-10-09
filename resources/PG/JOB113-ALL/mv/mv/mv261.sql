create materialized view if not exists mv261 as select company_name.id AS id, movie_companies.movie_id AS movie_id
 from movie_companies,company_name
 where (movie_companies.company_id = company_name.id)
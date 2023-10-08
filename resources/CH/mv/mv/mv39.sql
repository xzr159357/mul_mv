create materialized view if not exists mv39 engine = MergeTree() order by tuple() POPULATE as 
select company_name.country_code AS country_code, company_name.id AS id, movie_companies.company_type_id AS company_type_id, company_name.name AS name, movie_companies.movie_id AS movie_id, company_type.kind AS kind
 from company_name,company_type,movie_companies
 where (company_name.id = movie_companies.company_id) And (company_name.country_code = '[us]') And (company_type.id = movie_companies.company_type_id) And (company_type.kind = 'production companies')
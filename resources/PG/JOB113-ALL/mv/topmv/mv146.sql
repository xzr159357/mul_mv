create materialized view if not exists mv146 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, link_type.id AS link_type_id_5, link_type.link AS link, movie_companies.movie_id AS movie_id, movie_companies.note AS note
 from company_name,movie_link,company_type,movie_companies,link_type
 where (company_name.id = movie_companies.company_id) And (movie_companies.movie_id = movie_link.movie_id) And (movie_link.link_type_id = link_type.id) And (movie_companies.company_type_id = company_type.id) And (company_type.kind = 'production companies') And (movie_companies.note IS NULL) And (link_type.link like '%follow%')
create materialized view if not exists mv202 as select aka_title.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS movie_companies_note_4, movie_info.info AS info, movie_info.info_type_id AS info_type_id, movie_info.note AS movie_info_note_7, title.production_year AS production_year, title.title AS title
from aka_title, company_name, movie_companies, movie_info, title
 where (aka_title.movie_id = movie_companies.movie_id) And (company_name.country_code = '[us]') And (movie_companies.company_id = company_name.id) And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%') And (movie_info.movie_id = title.id) And (title.id = aka_title.movie_id)
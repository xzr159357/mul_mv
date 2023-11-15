create materialized view if not exists mv23 as select company_type.id AS id, company_type.kind AS kind, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_info.info AS info, movie_info.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
from company_type, movie_companies, movie_info, title
 where (company_type.id = movie_companies.company_type_id) And (company_type.kind = 'production companies') And (movie_companies.note like '%(theatrical)%')  And  (movie_companies.note like '%(France)%') And (movie_info.movie_id = title.id) And (title.id = movie_companies.movie_id)
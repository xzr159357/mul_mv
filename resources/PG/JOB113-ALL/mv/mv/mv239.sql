create materialized view if not exists mv239 as select info_type.id AS id, info_type.info AS info, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_info.note AS note, title.production_year AS production_year, title.title AS title
from info_type, movie_companies, movie_info, title
 where (info_type.info = 'release dates') And (movie_companies.movie_id = title.id) And (movie_info.info_type_id = info_type.id) And (movie_info.note like '%internet%') And (title.id = movie_info.movie_id)
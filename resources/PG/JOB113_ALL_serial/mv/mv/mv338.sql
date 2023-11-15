create materialized view if not exists mv338 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS company_name_id_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, title.production_year AS production_year, title.title AS title
from cast_info, company_name, keyword, movie_companies, movie_keyword, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (company_name.id = movie_companies.company_id) And (keyword.keyword in ('hero', 'martial-arts', 'hand-to-hand-combat')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = cast_info.movie_id) And (title.id = movie_companies.movie_id) And (title.id = movie_keyword.movie_id)
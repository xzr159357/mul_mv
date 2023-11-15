create materialized view if not exists mv532 as select cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_1, cast_info.person_id AS person_id, company_name.id AS company_name_id_3, company_name.name AS name, keyword.id AS keyword_id_5, keyword.keyword AS keyword, movie_companies.note AS movie_companies_note_7, movie_info.info AS info, movie_info.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
from cast_info, company_name, keyword, movie_companies, movie_info, movie_keyword, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (company_name.id = movie_companies.company_id) And (keyword.keyword in ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = cast_info.movie_id) And (title.id = movie_companies.movie_id) And (title.id = movie_info.movie_id) And (title.id = movie_keyword.movie_id)
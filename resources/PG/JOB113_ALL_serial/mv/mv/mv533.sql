create materialized view if not exists mv533 as select cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_1, cast_info.person_id AS person_id, company_name.id AS company_name_id_3, company_name.name AS name, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, movie_companies.note AS movie_companies_note_9, movie_info.info AS movie_info_info_10, title.production_year AS production_year, title.title AS title
from cast_info, company_name, info_type, keyword, movie_companies, movie_info, movie_keyword, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (company_name.id = movie_companies.company_id) And (info_type.info = 'genres') And (keyword.keyword in ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = cast_info.movie_id) And (title.id = movie_companies.movie_id) And (title.id = movie_info.movie_id) And (title.id = movie_keyword.movie_id)
create materialized view if not exists mv303 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, info_type.id AS id, info_type.info AS info, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_companies_movie_id_8, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
from cast_info, info_type, movie_companies, movie_info, name, role_type, title
 where (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (cast_info.role_id = role_type.id) And (info_type.info = 'release dates') And (movie_companies.movie_id = title.id) And (movie_info.info_type_id = info_type.id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = movie_info.movie_id)
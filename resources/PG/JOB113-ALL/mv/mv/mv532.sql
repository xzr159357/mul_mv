create materialized view if not exists mv532 as select aka_name.person_id AS aka_name_person_id_0, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, comp_cast_type.id AS comp_cast_type_id_6, comp_cast_type.kind AS kind, company_name.country_code AS country_code, company_name.id AS company_name_id_9, info_type.info AS info_type_info_10, movie_info.info AS movie_info_info_11, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_info_movie_id_13, movie_keyword.keyword_id AS keyword_id, name.gender AS gender, name.name AS name_name_16, person_info.person_id AS person_info_person_id_17, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, comp_cast_type, company_name, complete_cast, info_type, movie_companies, movie_info, movie_keyword, name, person_info, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = title.id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (cast_info.person_id = name.id) And (char_name.id = cast_info.person_role_id) And (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.kind = 'cast') And (company_name.id = movie_companies.company_id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = person_info.info_type_id) And (info_type.info = 'release dates') And (movie_companies.movie_id = title.id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (name.id = person_info.person_id) And (person_info.person_id = cast_info.person_id) And (role_type.id = cast_info.role_id) And (title.id = complete_cast.movie_id)
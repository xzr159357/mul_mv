select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, comp_cast_type.id AS comp_cast_type_id_6, comp_cast_type.kind AS kind, company_name.country_code AS country_code, company_name.id AS company_name_id_9, complete_cast.subject_id AS subject_id, keyword.id AS keyword_id_11, keyword.keyword AS keyword, name.gender AS gender, name.name AS name_name_14, person_info.info_type_id AS info_type_id, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, comp_cast_type, company_name, complete_cast, keyword, movie_companies, movie_keyword, name, person_info, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = movie_keyword.movie_id) And (cast_info.person_id = name.id) And (char_name.id = cast_info.person_role_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (company_name.id = movie_companies.company_id) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (keyword.id = movie_keyword.keyword_id) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_keyword.movie_id = complete_cast.movie_id) And (name.id = aka_name.person_id) And (name.id = person_info.person_id) And (person_info.person_id = aka_name.person_id) And (role_type.id = cast_info.role_id) And (title.id = cast_info.movie_id) And (title.id = complete_cast.movie_id) And (title.id = movie_companies.movie_id) And (title.id = movie_keyword.movie_id)
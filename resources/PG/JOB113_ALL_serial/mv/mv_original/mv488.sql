select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, comp_cast_type.id AS comp_cast_type_id_5, comp_cast_type.kind AS kind, company_name.country_code AS country_code, company_name.id AS company_name_id_8, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_10, info_type.info AS info_type_info_11, keyword.id AS keyword_id_12, keyword.keyword AS keyword, movie_companies.movie_id AS movie_companies_movie_id_14, movie_info.info AS movie_info_info_15, person_info.info_type_id AS info_type_id, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, comp_cast_type, company_name, complete_cast, info_type, keyword, movie_companies, movie_info, movie_keyword, person_info, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = movie_info.movie_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (company_name.id = movie_companies.company_id) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info.info_type_id) And (info_type.id = person_info.info_type_id) And (info_type.info = 'trivia') And (keyword.id = movie_keyword.keyword_id) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.movie_id = complete_cast.movie_id) And (movie_info.movie_id = title.id) And (movie_keyword.movie_id = movie_info.movie_id) And (person_info.person_id = cast_info.person_id) And (role_type.id = cast_info.role_id) And (title.id = movie_companies.movie_id) And (title.id = movie_keyword.movie_id)
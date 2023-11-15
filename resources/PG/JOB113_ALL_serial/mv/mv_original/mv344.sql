select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, company_name.country_code AS country_code, company_name.id AS company_name_id_7, info_type.id AS info_type_id_8, info_type.info AS info_type_info_9, keyword.id AS keyword_id_10, keyword.keyword AS keyword, movie_info.info AS movie_info_info_12, name.gender AS gender, name.name AS name_name_14, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, company_name, info_type, keyword, movie_companies, movie_info, movie_keyword, name, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = movie_keyword.movie_id) And (cast_info.person_id = name.id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.id = movie_companies.company_id) And (info_type.info = 'release dates') And (keyword.keyword in ('hero', 'martial-arts', 'hand-to-hand-combat')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (name.id = aka_name.person_id) And (role_type.role = 'actress') And (title.id = cast_info.movie_id) And (title.id = movie_companies.movie_id) And (title.id = movie_info.movie_id) And (title.id = movie_keyword.movie_id)
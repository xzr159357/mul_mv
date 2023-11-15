select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, info_type.id AS id, info_type.info AS info, movie_companies.company_id AS company_id, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
from cast_info, char_name, info_type, movie_companies, movie_info, name, role_type, title
 where (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (info_type.info = 'release dates') And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = title.id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = cast_info.movie_id) And (title.id = movie_companies.movie_id)
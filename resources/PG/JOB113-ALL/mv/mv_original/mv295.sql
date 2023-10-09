select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, info_type.id AS id, info_type.info AS info_type_info_6, movie_companies.company_id AS company_id, movie_info.info AS movie_info_info_8, name.gender AS gender, name.name AS name, role_type.role AS role
 from name,role_type,cast_info,movie_info,movie_companies,info_type
 where (name.id = cast_info.person_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (info_type.info = 'release dates')
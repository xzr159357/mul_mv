select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_3, cast_info.role_id AS role_id, char_name.id AS char_name_id_5, char_name.name AS char_name_name_6, movie_companies.company_id AS company_id, movie_companies.note AS movie_companies_note_8, name.gender AS gender, name.name AS name_name_10, role_type.role AS role, title.id AS title_id_12, title.production_year AS production_year, title.title AS title
 from movie_companies,title,name,role_type,char_name,aka_name,cast_info
 where (movie_companies.movie_id = cast_info.movie_id) And (movie_companies.note like '%(200%)%')  And  (((movie_companies.note like '%(USA)%')) Or ((movie_companies.note like '%(worldwide)%'))) And (title.id = cast_info.movie_id) And (name.id = cast_info.person_id) And (aka_name.person_id = name.id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (char_name.id = cast_info.person_role_id) And (cast_info.note = '(voice)')
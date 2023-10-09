select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, comp_cast_type.id AS comp_cast_type_id_5, comp_cast_type.kind AS kind, company_name.country_code AS country_code, company_name.id AS company_name_id_8, complete_cast.status_id AS status_id, info_type.id AS info_type_id_10, info_type.info AS info_type_info_11, movie_info.info AS movie_info_info_12, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
 from company_name,movie_keyword,complete_cast,cast_info,title,movie_info,movie_companies,comp_cast_type,info_type
 where (company_name.id = movie_companies.company_id) And (movie_keyword.movie_id = title.id) And (complete_cast.subject_id = comp_cast_type.id) And (title.id = complete_cast.movie_id) And (cast_info.movie_id = title.id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (movie_companies.movie_id = title.id) And (movie_info.movie_id = title.id) And (movie_info.info_type_id = info_type.id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (comp_cast_type.kind = 'cast') And (info_type.info = 'release dates')
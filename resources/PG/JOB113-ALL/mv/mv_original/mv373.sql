select company_name.country_code AS country_code, company_name.id AS company_name_id_1, info_type.id AS info_type_id_2, info_type.info AS info_type_info_3, kind_type.id AS kind_type_id_4, kind_type.kind AS kind, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_info.info AS movie_info_info_8, movie_info.note AS note, title.production_year AS production_year, title.title AS title
 from company_name,title,kind_type,movie_info,movie_companies,info_type
 where (company_name.id = movie_companies.company_id) And (title.id = movie_info.movie_id) And (movie_companies.movie_id = title.id) And (kind_type.id = title.kind_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info IS NOT NULL)  And  (movie_info.note like '%internet%')  And  (((movie_info.info like 'USA:% 199%')) Or ((movie_info.info like 'USA:% 200%'))) And (info_type.info = 'release dates')
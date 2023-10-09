create materialized view if not exists mv447 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, company_name.country_code AS country_code, company_name.id AS company_name_id_3, company_name.name AS name, company_type.id AS company_type_id_5, company_type.kind AS company_type_kind_6, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, movie_companies.note AS note, movie_keyword.keyword_id AS keyword_id, movie_link.link_type_id AS link_type_id
 from company_name,movie_keyword,complete_cast,movie_link,company_type,movie_companies,comp_cast_type
 where (movie_companies.company_id = company_name.id) And (company_name.country_code = '__NOTEQUAL__[pl]')  And  (((company_name.name like '%Film%')) Or ((company_name.name like '%Warner%'))) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_keyword.movie_id = movie_link.movie_id) And (movie_companies.movie_id = complete_cast.movie_id) And (comp_cast_type.id = complete_cast.subject_id) And (comp_cast_type.id = complete_cast.status_id) And (company_type.id = movie_companies.company_type_id) And (movie_companies.note IS NULL)
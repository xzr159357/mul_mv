create materialized view if not exists mv392 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, complete_cast.subject_id AS subject_id, keyword.id AS keyword_id_8, keyword.keyword AS keyword, link_type.id AS link_type_id_10, link_type.link AS link, movie_companies.note AS note, movie_info.info AS info
from company_name, company_type, complete_cast, keyword, link_type, movie_companies, movie_info, movie_keyword, movie_link
 where (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (complete_cast.movie_id = movie_keyword.movie_id) And (keyword.id = movie_keyword.keyword_id) And (link_type.link like '%follow%') And (movie_companies.movie_id = movie_link.movie_id) And (movie_info.movie_id = movie_companies.movie_id) And (movie_keyword.movie_id = movie_companies.movie_id) And (movie_link.link_type_id = link_type.id) And (movie_link.movie_id = complete_cast.movie_id) And (movie_link.movie_id = movie_info.movie_id) And (movie_link.movie_id = movie_keyword.movie_id)
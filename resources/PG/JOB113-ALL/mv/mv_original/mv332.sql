select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, link_type.id AS link_type_id_5, link_type.link AS link, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_info.info AS info, movie_keyword.keyword_id AS keyword_id, title.id AS title_id_11, title.production_year AS production_year, title.title AS title
from company_name, company_type, link_type, movie_companies, movie_info, movie_keyword, movie_link, title
 where (company_name.id = movie_companies.company_id) And (company_type.kind = 'production companies') And (link_type.link like '%follow%') And (movie_companies.company_type_id = company_type.id) And (movie_companies.movie_id = movie_link.movie_id) And (movie_companies.note IS NULL) And (movie_info.info in ('Germany', 'German')) And (movie_info.movie_id = movie_companies.movie_id) And (movie_keyword.movie_id = movie_link.movie_id) And (movie_link.link_type_id = link_type.id) And (movie_link.movie_id = title.id) And (title.id = movie_companies.movie_id)
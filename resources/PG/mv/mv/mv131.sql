create materialized view if not exists mv131 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, keyword.id AS keyword_id_5, keyword.keyword AS keyword, link_type.id AS link_type_id_7, link_type.link AS link, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
 from link_type,movie_companies,movie_link,movie_keyword,title,company_type,company_name,keyword
 where (movie_link.link_type_id = link_type.id) And (link_type.link like '%follow%') And (movie_companies.movie_id = movie_link.movie_id) And (movie_companies.company_type_id = company_type.id) And (movie_companies.note IS NULL) And (company_name.id = movie_companies.company_id) And (movie_keyword.movie_id = movie_link.movie_id) And (movie_link.movie_id = title.id) And (title.id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (company_type.kind = 'production companies') And (keyword.keyword = 'sequel')
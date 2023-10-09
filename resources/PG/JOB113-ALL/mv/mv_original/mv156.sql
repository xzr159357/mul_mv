select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, keyword.id AS keyword_id_5, keyword.keyword AS keyword, link_type.id AS link_type_id_7, link_type.link AS link, movie_companies.movie_id AS movie_companies_movie_id_9, movie_companies.note AS note, movie_link.movie_id AS movie_link_movie_id_11, title.production_year AS production_year, title.title AS title
 from company_name,movie_keyword,movie_link,company_type,keyword,title,movie_companies,link_type
 where (company_name.id = movie_companies.company_id) And (title.id = movie_keyword.movie_id) And (keyword.id = movie_keyword.keyword_id) And (title.id = movie_link.movie_id) And (movie_link.link_type_id = link_type.id) And (company_type.id = movie_companies.company_type_id) And (movie_companies.movie_id = title.id) And (title.title like '%Money%')  And  (title.production_year = 1998) And (movie_companies.note IS NULL) And (link_type.link like '%follows%')
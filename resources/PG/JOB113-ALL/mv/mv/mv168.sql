create materialized view if not exists mv168 as select company_type.id AS company_type_id_0, company_type.kind AS kind, keyword.id AS keyword_id_2, keyword.keyword AS keyword, link_type.id AS link_type_id_4, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
 from movie_keyword,movie_link,company_type,keyword,title,movie_companies,link_type
 where (movie_companies.movie_id = movie_keyword.movie_id) And (movie_link.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (movie_link.link_type_id = link_type.id) And (title.id = movie_link.movie_id) And (movie_companies.company_type_id = company_type.id) And (company_type.kind IS NOT NULL)  And  (company_type.kind = '__NOTEQUAL__production companies') And (keyword.keyword in ('sequel', 'revenge', 'based-on-novel')) And (title.production_year > 1950) And (movie_companies.note IS NOT NULL)
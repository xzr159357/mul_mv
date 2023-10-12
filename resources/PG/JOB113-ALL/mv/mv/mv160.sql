create materialized view if not exists mv160 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, keyword.id AS keyword_id_5, keyword.keyword AS keyword, movie_companies.movie_id AS movie_id, movie_companies.note AS note
from company_name, company_type, keyword, movie_companies, movie_keyword
 where (company_name.country_code = '__NOTEQUAL__[pl]')  And  (((company_name.name = '__LIKE__20th Century Fox%')) Or ((company_name.name = '__LIKE__Twentieth Century Fox%'))) And (company_type.kind IS NOT NULL)  And  (company_type.kind = '__NOTEQUAL__production companies') And (keyword.keyword in ('sequel', 'revenge', 'based-on-novel')) And (movie_companies.company_id = company_name.id) And (movie_companies.company_type_id = company_type.id) And (movie_companies.note IS NOT NULL) And (movie_keyword.keyword_id = keyword.id) And (movie_keyword.movie_id = movie_companies.movie_id)
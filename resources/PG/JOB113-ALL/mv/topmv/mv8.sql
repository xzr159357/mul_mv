create materialized view if not exists mv8 as select company_type.id AS company_type_id_0, company_type.kind AS kind, info_type.id AS info_type_id_2, info_type.info AS info, movie_companies.note AS note, movie_info_idx.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
 from company_type,title,movie_info_idx,movie_companies,info_type
 where (movie_companies.company_type_id = company_type.id) And (company_type.kind = 'production companies') And (title.id = movie_companies.movie_id) And (movie_info_idx.movie_id = movie_companies.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_companies.movie_id = title.id) And (movie_companies.note not like '%(as Metro-Goldwyn-Mayer Pictures)%') And (info_type.info = 'bottom 10 rank')
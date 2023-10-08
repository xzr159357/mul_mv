select company_type.id AS company_type_id_0, company_type.kind AS kind, info_type.id AS info_type_id_2, info_type.info AS info, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
 from company_type,movie_info_idx,title,movie_companies,info_type
 where (movie_companies.company_type_id = company_type.id) And (company_type.kind = 'production companies') And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_companies.movie_id) And (movie_companies.movie_id = title.id) And (movie_companies.note not like '%(as Metro-Goldwyn-Mayer Pictures)%')  And  (((movie_companies.note like '%(co-production)%')) Or ((movie_companies.note like '%(presents)%'))) And (info_type.info = 'top 250 rank')
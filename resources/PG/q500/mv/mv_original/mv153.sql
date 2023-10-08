select movie_companies.company_id AS company_id, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year
 from movie_info_idx,title,movie_companies
 where (title.id = movie_info_idx.movie_id) And ((movie_info_idx.info_type_id = 99) Or (movie_info_idx.info_type_id > 99)) And (title.id = movie_companies.movie_id) And (movie_info_idx.movie_id = title.id) And (title.production_year > 2000) And (movie_companies.movie_id = title.id) And (movie_companies.company_id < 7851)
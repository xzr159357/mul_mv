select movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_info_idx.info_type_id AS info_type_id
 from movie_info_idx,title,movie_companies
 where (title.id = movie_info_idx.movie_id) And ((movie_info_idx.info_type_id = 99) Or (movie_info_idx.info_type_id > 99)) And (movie_companies.movie_id = title.id) And (movie_companies.company_type_id < 2)
select movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, movie_info.info_type_id AS info_type_id
 from movie_companies,movie_info,title,movie_info_idx
 where (movie_companies.movie_id = title.id) And (movie_companies.company_id < 11369) And (movie_info.movie_id = movie_companies.movie_id) And (movie_info.info_type_id > 107) And (title.id = movie_companies.movie_id) And (movie_info_idx.movie_id = title.id)
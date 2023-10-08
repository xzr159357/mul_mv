select movie_info.info_type_id AS info_type_id
 from title,movie_info,movie_companies
 where (title.id = movie_companies.movie_id) And (movie_info.movie_id = title.id) And ((movie_info.info_type_id = 2) Or (movie_info.info_type_id > 16)) And (movie_companies.movie_id = title.id)
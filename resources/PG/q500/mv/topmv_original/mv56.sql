select movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, movie_info.info_type_id AS info_type_id
 from movie_info,movie_companies
 where (movie_info.movie_id = movie_companies.movie_id) And (movie_info.info_type_id > 9) And (movie_companies.company_id < 11369)
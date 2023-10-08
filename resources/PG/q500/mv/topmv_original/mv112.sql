select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id
 from movie_keyword,movie_info,title
 where (movie_keyword.movie_id = title.id) And (movie_info.movie_id = title.id) And ((movie_info.info_type_id < 5) Or (movie_info.info_type_id > 15))
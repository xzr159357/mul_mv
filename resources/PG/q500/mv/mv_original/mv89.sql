select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,movie_info,title
 where (title.id = movie_keyword.movie_id) And ((movie_keyword.keyword_id < 7565) Or (movie_keyword.keyword_id > 10225)) And (movie_info.movie_id = title.id) And (movie_info.info_type_id > 8) And (movie_keyword.movie_id = title.id)
select movie_info.info AS movie_info_info_0, movie_info_idx.info AS movie_info_idx_info_1, movie_keyword.movie_id AS movie_keyword_movie_id_2, keyword.id AS keyword_id_3, info_type.info AS info_type_info_4, keyword.keyword AS keyword, movie_info.movie_id AS movie_info_movie_id_6, movie_info_idx.movie_id AS movie_info_idx_movie_id_7, info_type.id AS info_type_id_8, movie_info.info_type_id AS info_type_id
 from movie_info_idx,info_type,movie_keyword,movie_info,keyword
 where movie_keyword.movie_id = movie_info_idx.movie_id  And  movie_info.movie_id = movie_info_idx.movie_id And (info_type.id = movie_info_idx.info_type_id) And (movie_info_idx.info < '8.5') And  info_type.id = movie_info.info_type_id And movie_keyword.movie_id = movie_info.movie_id  And (keyword.id = movie_keyword.keyword_id) And ((movie_info.info = 'Sweden') Or (movie_info.info =  'Norway') Or (movie_info.info =  'Germany') Or (movie_info.info =  'Denmark') Or (movie_info.info =  'Swedish') Or (movie_info.info =  'Denish') Or (movie_info.info =  'Norwegian') Or (movie_info.info =  'German') Or (movie_info.info =  'USA') Or (movie_info.info =  'American')) And ((keyword.keyword = 'murder') Or (keyword.keyword =  'murder-in-title') Or (keyword.keyword =  'blood') Or (keyword.keyword =  'violence'))
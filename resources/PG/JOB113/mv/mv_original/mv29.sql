select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, keyword.id AS keyword_id_2, keyword.keyword AS keyword, movie_info_idx.info AS movie_info_idx_info_4, movie_info_idx.movie_id AS movie_id
 from movie_info_idx,keyword,info_type,movie_keyword
 where (movie_keyword.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info > '2.0') And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword like '%sequel%') And (info_type.info = 'rating')
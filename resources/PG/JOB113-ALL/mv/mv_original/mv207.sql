select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, keyword.id AS keyword_id_2, keyword.keyword AS keyword, movie_info.info AS movie_info_info_4, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_7, title.kind_id AS kind_id, title.production_year AS production_year, title.title AS title
 from movie_keyword,keyword,title,movie_info_idx,movie_info,info_type
 where (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (title.id = movie_info.movie_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info > '6.0') And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American')) And (info_type.info = 'countries') And (info_type.info = 'rating')
create materialized view if not exists mv407 as select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, keyword.id AS keyword_id_2, keyword.keyword AS keyword, movie_info.info AS movie_info_info_4, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_7
 from movie_keyword,keyword,movie_info_idx,movie_info,info_type
 where (movie_keyword.movie_id = movie_info.movie_id) And (keyword.id = movie_keyword.keyword_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War')) And (info_type.info = 'genres') And (info_type.info = 'votes')
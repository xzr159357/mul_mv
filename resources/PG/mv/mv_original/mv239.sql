select info_type.info AS info_type_info_0, movie_info.info AS movie_info_info_1, movie_info.movie_id AS movie_id
 from info_type,movie_info
 where (movie_info.info_type_id = info_type.id) And (info_type.info = 'genres') And (info_type.id = movie_info.info_type_id) And (movie_info.info in ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War'))
create materialized view if not exists mv9 as select movie_info_idx.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,movie_info_idx
 where (movie_keyword.movie_id = movie_info_idx.movie_id) And (movie_keyword.keyword_id = 16264)
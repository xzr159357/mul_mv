create materialized view if not exists mv44 as select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,movie_info,title,movie_info_idx
 where (title.id = movie_keyword.movie_id) And (movie_keyword.keyword_id > 819) And (movie_info.movie_id = title.id) And (movie_info.info_type_id < 15) And (movie_info_idx.movie_id = title.id) And (movie_keyword.movie_id = title.id)
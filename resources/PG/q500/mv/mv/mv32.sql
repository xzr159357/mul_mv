create materialized view if not exists mv32 as select movie_info.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,movie_info,title
 where ((movie_keyword.keyword_id < 7565) Or (movie_keyword.keyword_id > 10225)) And (title.id = movie_keyword.movie_id) And (movie_info.movie_id = title.id)
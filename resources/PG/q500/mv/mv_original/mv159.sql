select movie_info_idx.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,title,movie_info_idx
 where (movie_keyword.movie_id = title.id) And (movie_keyword.keyword_id < 78213) And (movie_info_idx.movie_id = title.id)
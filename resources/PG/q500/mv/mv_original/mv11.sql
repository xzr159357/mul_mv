select movie_companies.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id, title.kind_id AS kind_id, title.production_year AS production_year
 from movie_info_idx,movie_keyword,title,movie_companies
 where (movie_info_idx.movie_id = title.id) And (movie_keyword.movie_id = movie_info_idx.movie_id) And (movie_keyword.keyword_id = 16264) And (title.id = movie_info_idx.movie_id) And (movie_companies.movie_id = title.id)
select cast_info.movie_id AS cast_info_movie_id_0, movie_companies.company_type_id AS company_type_id, movie_info_idx.movie_id AS movie_info_idx_movie_id_2, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year
 from title,movie_info_idx,movie_keyword,cast_info,movie_companies
 where (title.id = movie_info_idx.movie_id) And (cast_info.movie_id = title.id) And (movie_companies.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And ((movie_keyword.keyword_id = 13886) Or (movie_keyword.keyword_id = 3644)) And (title.id = movie_keyword.movie_id) And (movie_companies.company_type_id = 2)
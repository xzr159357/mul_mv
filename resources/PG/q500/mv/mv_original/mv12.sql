select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_keyword_movie_id_4, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info_idx,movie_keyword,cast_info,movie_companies
 where (title.id = movie_info_idx.movie_id) And (cast_info.movie_id = title.id) And (movie_companies.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (movie_keyword.movie_id = movie_info_idx.movie_id) And (movie_keyword.keyword_id = 16264) And (cast_info.person_id > 1487650)  And  (cast_info.role_id < 8)
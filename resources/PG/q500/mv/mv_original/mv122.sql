select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, movie_info_idx.movie_id AS movie_info_idx_movie_id_2, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info_idx,movie_keyword,movie_info,cast_info
 where (cast_info.movie_id = title.id) And (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (((title.kind_id = 7)  And  (title.production_year = 1992)) Or ((title.production_year < 2008)  And  (title.kind_id = 1))) And (cast_info.person_id < 1816925)
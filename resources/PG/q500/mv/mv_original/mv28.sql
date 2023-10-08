select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_info_idx.info_type_id AS info_type_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,title,cast_info,movie_info_idx
 where (movie_keyword.movie_id = title.id) And ((movie_keyword.keyword_id < 789) Or (movie_keyword.keyword_id > 7024)) And (title.id = movie_info_idx.movie_id) And (cast_info.movie_id = title.id) And (cast_info.person_id < 3686892)  And  (cast_info.role_id < 3) And (movie_info_idx.info_type_id < 100)
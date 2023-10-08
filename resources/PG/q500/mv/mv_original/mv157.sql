select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, movie_info.info_type_id AS info_type_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,movie_info,title,cast_info
 where (movie_keyword.movie_id = title.id) And (movie_keyword.keyword_id > 11171) And (movie_info.movie_id = title.id) And (movie_info.info_type_id = 2) And (cast_info.movie_id = title.id) And (cast_info.person_id > 2767669)
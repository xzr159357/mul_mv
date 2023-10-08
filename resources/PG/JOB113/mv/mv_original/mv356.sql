select complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, complete_cast.subject_id AS subject_id, keyword.id AS id, keyword.keyword AS keyword, movie_info.info AS info
 from keyword,movie_info,complete_cast,movie_keyword
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'sequel') And (movie_info.movie_id = movie_keyword.movie_id) And (movie_info.info in ('Sweden', 'Germany', 'Swedish', 'German')) And (complete_cast.movie_id = movie_keyword.movie_id)
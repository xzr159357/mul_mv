select keyword.id AS id, keyword.keyword AS keyword, movie_info.info AS info, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id
 from movie_info,keyword,movie_keyword
 where (movie_info.movie_id = movie_keyword.movie_id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'computer-animation')
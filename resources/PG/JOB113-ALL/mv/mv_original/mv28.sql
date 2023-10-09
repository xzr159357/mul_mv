select keyword.id AS id, keyword.keyword AS keyword, movie_info.info AS info, movie_info.movie_id AS movie_id
 from movie_keyword,movie_info,keyword
 where (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (movie_info.info = 'Bulgaria') And (keyword.keyword like '%sequel%')
create materialized view if not exists mv30 as select keyword.id AS id, keyword.keyword AS keyword, movie_info.info AS info, movie_info.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
 from movie_keyword,movie_info,keyword,title
 where (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id) And (movie_info.movie_id = title.id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American')) And (keyword.keyword like '%sequel%')
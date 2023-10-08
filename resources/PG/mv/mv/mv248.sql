create materialized view if not exists mv248 as select info_type.id AS id, info_type.info AS info_type_info_1, movie_info.info AS movie_info_info_2, movie_info.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
 from info_type,title,movie_info
 where (info_type.id = movie_info.info_type_id) And (info_type.info = 'release dates') And (title.id = movie_info.movie_id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%2007%')) Or ((movie_info.info = '__LIKE__USA:%2008%')))
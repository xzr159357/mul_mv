select info_type.id AS id, info_type.info AS info_type_info_1, movie_info.info AS movie_info_info_2, movie_info.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from info_type, movie_info, title
 where (info_type.info = 'release dates') And (movie_info.info IS NOT NULL)  And  (((movie_info.info like 'Japan:%200%')) Or ((movie_info.info like 'USA:%200%'))) And (movie_info.info_type_id = info_type.id) And (title.id = movie_info.movie_id)
select info_type.id AS id, info_type.info AS info, movie_info.movie_id AS movie_id, movie_info.note AS note, title.production_year AS production_year, title.title AS title
from info_type, movie_info, title
 where (info_type.info = 'release dates') And (movie_info.info_type_id = info_type.id) And (movie_info.note like '%internet%') And (title.id = movie_info.movie_id)
select info_type.id AS id, info_type.info AS info, movie_info_idx.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from info_type, movie_info_idx, title
 where (info_type.info = 'bottom 10 rank') And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_info_idx.movie_id)
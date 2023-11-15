select link_type.id AS id, link_type.link AS link, movie_info_idx.info AS info, movie_info_idx.info_type_id AS info_type_id, movie_info_idx.movie_id AS movie_id, movie_link.linked_movie_id AS linked_movie_id
from link_type, movie_info_idx, movie_link
 where (link_type.link like '%follow%') And (movie_info_idx.movie_id = movie_link.movie_id) And (movie_link.link_type_id = link_type.id)
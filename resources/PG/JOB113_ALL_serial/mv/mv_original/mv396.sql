select complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, complete_cast.subject_id AS subject_id, link_type.id AS id, link_type.link AS link
from complete_cast, link_type, movie_link
 where (complete_cast.movie_id = movie_link.movie_id) And (link_type.link like '%follow%') And (movie_link.link_type_id = link_type.id)
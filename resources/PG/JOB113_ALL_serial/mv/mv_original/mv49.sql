select link_type.id AS id, link_type.link AS link, movie_link.linked_movie_id AS linked_movie_id, title.production_year AS production_year
from link_type, movie_link, title
 where (link_type.link in ('references', 'referenced in', 'features', 'featured in')) And (movie_link.link_type_id = link_type.id) And (title.id = movie_link.linked_movie_id)
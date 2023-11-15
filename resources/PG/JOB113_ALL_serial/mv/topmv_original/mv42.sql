select link_type.id AS id, link_type.link AS link, movie_link.linked_movie_id AS linked_movie_id, title.production_year AS production_year, title.title AS title
from link_type, movie_link, title
 where (link_type.link = 'features') And (movie_link.link_type_id = link_type.id) And (title.id = movie_link.linked_movie_id)
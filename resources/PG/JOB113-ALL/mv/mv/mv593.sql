create materialized view if not exists mv593 as select keyword.id AS keyword_id_0, keyword.keyword AS keyword, link_type.id AS link_type_id_2, link_type.link AS link, movie_keyword.movie_id AS movie_id, title.title AS title
from keyword, link_type, movie_keyword, movie_link, title
 where (keyword.keyword = 'character-name-in-title') And (movie_keyword.keyword_id = keyword.id) And (movie_keyword.movie_id = movie_link.movie_id) And (movie_link.link_type_id = link_type.id) And (title.id = movie_keyword.movie_id) And (title.id = movie_link.linked_movie_id)
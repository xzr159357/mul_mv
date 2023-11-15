create materialized view if not exists mv540 as select keyword.id AS keyword_id_0, keyword.keyword AS keyword, link_type.id AS link_type_id_2, link_type.link AS link, movie_keyword.movie_id AS movie_id, movie_link.linked_movie_id AS linked_movie_id, title.id AS title_id_6, title.title AS title
from keyword, link_type, movie_keyword, movie_link, title
 where (keyword.keyword = '10,000-mile-club') And (link_type.id = movie_link.link_type_id) And (movie_keyword.keyword_id = keyword.id) And (movie_link.movie_id = movie_keyword.movie_id) And (title.id = movie_keyword.movie_id)
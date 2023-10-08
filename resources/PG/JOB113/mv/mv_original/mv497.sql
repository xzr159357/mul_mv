select keyword.id AS keyword_id_0, keyword.keyword AS keyword, link_type.id AS link_type_id_2, link_type.link AS link, movie_keyword.movie_id AS movie_id, movie_link.linked_movie_id AS linked_movie_id, title.title AS title
 from keyword,title,movie_keyword,link_type,movie_link
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'character-name-in-title') And (title.id = movie_keyword.movie_id) And (movie_keyword.movie_id = movie_link.movie_id) And (link_type.id = movie_link.link_type_id)
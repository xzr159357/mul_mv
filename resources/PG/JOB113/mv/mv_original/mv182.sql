select keyword.id AS keyword_id_0, keyword.keyword AS keyword, kind_type.id AS kind_type_id_2, kind_type.kind AS kind, movie_keyword.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
 from kind_type,keyword,title,movie_keyword
 where (kind_type.id = title.kind_id) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('murder', 'murder-in-title', 'blood', 'violence')) And (title.id = movie_keyword.movie_id)
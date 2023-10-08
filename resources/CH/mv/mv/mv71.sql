create materialized view if not exists mv71 engine = MergeTree() order by tuple() POPULATE as 
select movie_link.movie_id AS movie_link_movie_id_0, movie_keyword.movie_id AS movie_keyword_movie_id_1, link_type.link AS link, keyword.id AS keyword_id_3, link_type.id AS link_type_id_4, keyword.keyword AS keyword, movie_link.linked_movie_id AS linked_movie_id
 from movie_link,movie_keyword,keyword,link_type
 where (link_type.id = movie_link.link_type_id) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = '10,000-mile-club')
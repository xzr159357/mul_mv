create materialized view if not exists mv66 engine = MergeTree() order by tuple() POPULATE as 
select cast_info.note AS note, cast_info.movie_id AS movie_id, movie_info.info AS movie_info_info_2, info_type.info AS info_type_info_3, movie_info.info_type_id AS info_type_id, cast_info.person_id AS person_id
 from cast_info,movie_info,info_type
 where (cast_info.movie_id = movie_info.movie_id) And ((cast_info.note = '(writer)') Or (cast_info.note =  '(head writer)') Or (cast_info.note =  '(written by)') Or (cast_info.note =  '(story)') Or (cast_info.note =  '(story editor)')) And (info_type.id = movie_info.info_type_id) And ((movie_info.info = 'Horror') Or (movie_info.info =  'Action') Or (movie_info.info =  'Sci-Fi') Or (movie_info.info =  'Thriller') Or (movie_info.info =  'Crime') Or (movie_info.info =  'War'))
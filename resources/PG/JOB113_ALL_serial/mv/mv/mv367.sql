create materialized view if not exists mv367 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, keyword.id AS keyword_id_5, keyword.keyword AS keyword, movie_info.info AS movie_info_info_7, title.production_year AS production_year, title.title AS title
from cast_info, info_type, keyword, movie_info, movie_keyword, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (info_type.info = 'genres') And (keyword.keyword in ('murder', 'blood', 'gore', 'death', 'female-nudity')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = cast_info.movie_id) And (title.id = movie_info.movie_id) And (title.id = movie_keyword.movie_id)
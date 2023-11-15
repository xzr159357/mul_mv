select keyword.id AS id, keyword.keyword AS keyword, movie_info_idx.info AS info, movie_info_idx.info_type_id AS info_type_id, movie_info_idx.movie_id AS movie_id
from keyword, movie_info_idx, movie_keyword
 where (keyword.keyword in ('murder', 'blood', 'gore', 'death', 'female-nudity')) And (movie_info_idx.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id)
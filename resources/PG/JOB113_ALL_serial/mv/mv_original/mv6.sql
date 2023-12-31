select info_type.id AS id, info_type.info AS info, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note
from info_type, movie_companies, movie_info_idx
 where (info_type.info = 'bottom 10 rank') And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id)
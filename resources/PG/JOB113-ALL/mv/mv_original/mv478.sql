select complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, complete_cast.subject_id AS subject_id, info_type.id AS id, info_type.info AS info_type_info_4, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS note, movie_info.info AS movie_info_info_8, movie_info_idx.info AS movie_info_idx_info_9, movie_info_idx.info_type_id AS info_type_id
from complete_cast, info_type, movie_companies, movie_info, movie_info_idx
 where (info_type.info = 'countries') And (info_type.info = 'rating') And (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (movie_info.info in ('Sweden', 'Germany', 'Swedish', 'German')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = complete_cast.movie_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info > '6.5') And (movie_info_idx.info_type_id = info_type.id)
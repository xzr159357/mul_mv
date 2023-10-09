select complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, complete_cast.subject_id AS subject_id, info_type.id AS id, info_type.info AS info_type_info_4, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS note, movie_info.info AS movie_info_info_8, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_10
 from complete_cast,movie_info_idx,movie_info,movie_companies,info_type
 where (movie_info.movie_id = complete_cast.movie_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info > '6.5') And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Sweden', 'Germany', 'Swedish', 'German')) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (info_type.info = 'countries') And (info_type.info = 'rating')
select info_type.id AS id, info_type.info AS info_type_info_1, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_info.info AS movie_info_info_6, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_8
 from movie_companies,movie_info_idx,info_type,movie_info
 where (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '7.0') And (movie_info.info_type_id = info_type.id) And (info_type.info = 'countries') And (info_type.info = 'rating') And (movie_info.info in ('Germany', 'German', 'USA', 'American'))
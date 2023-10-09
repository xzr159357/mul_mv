select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, company_type.id AS company_type_id_2, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, movie_companies.company_id AS company_id, movie_companies.note AS note, movie_info.info AS movie_info_info_11, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_13, title.kind_id AS kind_id, title.production_year AS production_year, title.title AS title
 from movie_keyword,complete_cast,company_type,keyword,title,movie_info_idx,movie_info,movie_companies,comp_cast_type,info_type
 where (title.id = movie_keyword.movie_id) And (movie_keyword.movie_id = movie_info.movie_id) And (keyword.id = movie_keyword.keyword_id) And (movie_info.movie_id = complete_cast.movie_id) And (comp_cast_type.id = complete_cast.subject_id) And (comp_cast_type.id = complete_cast.status_id) And (company_type.id = movie_companies.company_type_id) And (movie_info.movie_id = title.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info > '6.5') And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Sweden', 'Germany', 'Swedish', 'German')) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (info_type.info = 'countries') And (info_type.info = 'rating')
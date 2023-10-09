create materialized view if not exists mv472 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, company_type.id AS company_type_id_2, complete_cast.movie_id AS complete_cast_movie_id_3, complete_cast.status_id AS status_id, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, kind_type.id AS kind_type_id_9, kind_type.kind AS kind_type_kind_10, movie_companies.company_id AS company_id, movie_companies.note AS note, movie_info.info AS movie_info_info_13, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_15, movie_keyword.movie_id AS movie_keyword_movie_id_16, title.production_year AS production_year, title.title AS title
 from movie_keyword,complete_cast,company_type,keyword,title,movie_info_idx,kind_type,movie_info,movie_companies,comp_cast_type,info_type
 where (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (title.id = complete_cast.movie_id) And (comp_cast_type.id = complete_cast.subject_id) And (comp_cast_type.id = complete_cast.status_id) And (company_type.id = movie_companies.company_type_id) And (title.id = movie_info_idx.movie_id) And (movie_companies.movie_id = title.id) And (movie_info.movie_id = title.id) And (kind_type.id = title.kind_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '8.5') And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American')) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (info_type.info = 'countries') And (info_type.info = 'rating')
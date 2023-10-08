select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS complete_cast_movie_id_2, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, keyword.id AS keyword_id_6, keyword.keyword AS keyword, kind_type.id AS kind_type_id_8, kind_type.kind AS kind_type_kind_9, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS note, movie_info.info AS movie_info_info_13, movie_info.movie_id AS movie_info_movie_id_14, movie_info_idx.info AS movie_info_idx_info_15, title.production_year AS production_year, title.title AS title
 from movie_info_idx,keyword,comp_cast_type,title,movie_companies,info_type,complete_cast,kind_type,movie_info,movie_keyword
 where (movie_info_idx.movie_id = title.id) And (movie_info_idx.info < '8.5') And (info_type.id = movie_info_idx.info_type_id) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('murder', 'murder-in-title', 'blood', 'violence')) And (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.id = complete_cast.subject_id) And (title.id = movie_keyword.movie_id) And (movie_info.movie_id = title.id) And (kind_type.id = title.kind_id) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (movie_info.info_type_id = info_type.id) And (info_type.info = 'countries') And (complete_cast.movie_id = movie_keyword.movie_id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American'))
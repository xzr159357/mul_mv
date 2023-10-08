select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, keyword.id AS keyword_id_2, keyword.keyword AS keyword, kind_type.id AS kind_type_id_4, kind_type.kind AS kind, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_companies_movie_id_8, movie_companies.note AS note, movie_info.info AS movie_info_info_10, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_12, movie_keyword.movie_id AS movie_keyword_movie_id_13, title.production_year AS production_year, title.title AS title
 from movie_info_idx,keyword,title,info_type,movie_companies,kind_type,movie_info,movie_keyword
 where (movie_info_idx.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '7.0') And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('murder', 'murder-in-title', 'blood', 'violence')) And (title.id = movie_companies.movie_id) And (title.id = movie_keyword.movie_id) And (movie_info.movie_id = title.id) And (kind_type.id = title.kind_id) And (movie_info.info_type_id = info_type.id) And (info_type.info = 'countries') And (info_type.info = 'rating') And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (movie_info.info in ('Germany', 'German', 'USA', 'American'))
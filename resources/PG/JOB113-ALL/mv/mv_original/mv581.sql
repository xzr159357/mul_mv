select company_name.id AS company_name_id_0, company_name.name AS name, info_type.id AS info_type_id_2, info_type.info AS info_type_info_3, movie_companies.movie_id AS movie_id, movie_info.info AS movie_info_info_5, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_7, movie_keyword.keyword_id AS keyword_id, title.title AS title
 from company_name,movie_keyword,title,movie_info_idx,movie_info,movie_companies,info_type
 where (company_name.id = movie_companies.company_id) And (movie_keyword.movie_id = title.id) And (title.id = movie_companies.movie_id) And (movie_info.movie_id = title.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War')) And (info_type.info = 'genres') And (info_type.info = 'votes')
select cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_1, cast_info.person_id AS person_id, company_name.id AS company_name_id_3, company_name.name AS name, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, movie_companies.note AS movie_companies_note_7, movie_info.info AS movie_info_info_8, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_10, title.production_year AS production_year, title.title AS title
 from company_name,cast_info,title,movie_info_idx,movie_info,movie_companies,info_type
 where (company_name.id = movie_companies.company_id) And (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (title.id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = movie_info.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info.movie_id = movie_companies.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Horror', 'Thriller')) And (movie_companies.note like '%(Blu-ray)%') And (info_type.info = 'genres') And (info_type.info = 'votes')
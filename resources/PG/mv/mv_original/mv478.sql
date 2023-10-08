select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.subject_id AS subject_id, movie_info.info AS movie_info_info_6, movie_info.info_type_id AS movie_info_info_type_id_7, movie_info.movie_id AS movie_info_movie_id_8, movie_info_idx.info AS movie_info_idx_info_9, movie_info_idx.info_type_id AS movie_info_idx_info_type_id_10, name.gender AS gender, name.name AS name, title.title AS title
 from comp_cast_type,movie_info_idx,title,movie_info,name,complete_cast,cast_info
 where (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (title.id = movie_info_idx.movie_id) And (cast_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = complete_cast.movie_id) And (movie_info.movie_id = title.id) And (movie_info.info in ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War')) And (name.id = cast_info.person_id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)'))
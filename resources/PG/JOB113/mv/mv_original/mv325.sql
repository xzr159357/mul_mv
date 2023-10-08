select complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, complete_cast.subject_id AS subject_id, keyword.id AS id, keyword.keyword AS keyword, movie_info_idx.info AS info, movie_info_idx.info_type_id AS info_type_id
 from movie_info_idx,keyword,complete_cast,movie_keyword
 where (movie_info_idx.movie_id = movie_keyword.movie_id) And (movie_info_idx.info > '8.0') And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('superhero', 'marvel-comics', 'based-on-comic', 'fight')) And (complete_cast.movie_id = movie_keyword.movie_id)
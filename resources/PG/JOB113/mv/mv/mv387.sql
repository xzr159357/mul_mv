create materialized view if not exists mv387 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, keyword.id AS keyword_id_4, keyword.keyword AS keyword, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS note
 from keyword,comp_cast_type,movie_companies,complete_cast,movie_keyword
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('murder', 'murder-in-title', 'blood', 'violence')) And (complete_cast.status_id = comp_cast_type.id) And (comp_cast_type.kind = '__NOTEQUAL__complete+verified') And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (complete_cast.movie_id = movie_keyword.movie_id)
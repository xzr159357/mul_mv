create materialized view if not exists mv403 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, keyword.id AS keyword_id_4, keyword.keyword AS keyword, link_type.id AS link_type_id_6, link_type.link AS link, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS note, movie_info.info AS info, title.id AS title_id_12, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, keyword, link_type, movie_companies, movie_info, movie_keyword, movie_link, title
 where (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.id = complete_cast.subject_id) And (complete_cast.movie_id = movie_link.movie_id) And (keyword.id = movie_keyword.keyword_id) And (link_type.link like '%follow%') And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.movie_id = complete_cast.movie_id) And (movie_link.link_type_id = link_type.id) And (movie_link.movie_id = movie_companies.movie_id) And (movie_link.movie_id = movie_info.movie_id) And (movie_link.movie_id = movie_keyword.movie_id) And (movie_link.movie_id = title.id) And (title.id = movie_keyword.movie_id)
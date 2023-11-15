create materialized view if not exists mv238 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, company_name.id AS company_name_id_2, keyword.id AS keyword_id_3, keyword.keyword AS keyword, name.name AS name, title.id AS title_id_6
from cast_info, company_name, keyword, movie_companies, movie_keyword, name, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (company_name.id = movie_companies.company_id) And (keyword.keyword = 'character-name-in-title') And (movie_companies.movie_id = cast_info.movie_id) And (movie_keyword.keyword_id = keyword.id) And (name.id = cast_info.person_id) And (title.id = cast_info.movie_id)
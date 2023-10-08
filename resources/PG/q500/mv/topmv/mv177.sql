create materialized view if not exists mv177 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_companies.company_id AS company_id
 from cast_info,movie_companies
 where (cast_info.movie_id = movie_companies.movie_id) And (cast_info.person_id < 525577)  And  (cast_info.role_id = 9) And (movie_companies.company_id < 428)
select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_companies.company_id AS company_id, title.kind_id AS kind_id
 from title,cast_info,movie_companies
 where (title.id = movie_companies.movie_id) And (((cast_info.person_id = 613664)  And  (cast_info.role_id = 1)) Or ((cast_info.person_id < 525577)  And  (cast_info.role_id = 9))) And (title.id = cast_info.movie_id) And (movie_companies.movie_id = title.id) And (movie_companies.company_id > 80011)
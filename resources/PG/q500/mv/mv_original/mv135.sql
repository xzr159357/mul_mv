select cast_info.movie_id AS movie_id, cast_info.role_id AS role_id, movie_companies.company_type_id AS company_type_id
 from title,cast_info,movie_companies
 where (title.id = movie_companies.movie_id) And (cast_info.role_id = 10) And (title.id = cast_info.movie_id) And (movie_companies.movie_id = title.id) And (movie_companies.company_type_id = 2)
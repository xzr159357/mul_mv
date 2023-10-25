select cast_info.note AS note, cast_info.person_role_id AS person_role_id, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, role_type.role AS role
from cast_info, movie_companies, role_type
 where (cast_info.movie_id = movie_companies.movie_id) And (cast_info.note like '%(voice)%')  And  (cast_info.note like '%(uncredited)%') And (cast_info.role_id = role_type.id) And (movie_companies.movie_id = cast_info.movie_id) And (role_type.id = cast_info.role_id)
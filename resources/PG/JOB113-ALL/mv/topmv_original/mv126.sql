select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, role_type.role AS role
from cast_info, role_type
 where (cast_info.note like '%(voice)%')  And  (cast_info.note like '%(uncredited)%') And (cast_info.role_id = role_type.id) And (role_type.id = cast_info.role_id)
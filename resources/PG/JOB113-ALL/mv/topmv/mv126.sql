create materialized view if not exists mv126 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, role_type.role AS role
 from role_type,cast_info
 where (role_type.id = cast_info.role_id) And (cast_info.note like '%(voice)%')  And  (cast_info.note like '%(uncredited)%')
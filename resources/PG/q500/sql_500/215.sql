SELECT * FROM title t,cast_info ci,movie_info mi WHERE t.id=ci.movie_id AND t.id=mi.movie_id AND t.kind_id>1 AND ci.person_id<3326509 AND ci.role_id<2 AND mi.info_type_id<16;

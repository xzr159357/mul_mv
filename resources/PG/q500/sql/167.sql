SELECT * FROM title t,movie_companies mc,cast_info ci,movie_info mi WHERE t.id=mc.movie_id AND t.id=ci.movie_id AND t.id=mi.movie_id AND ci.person_id>1021231 AND ci.role_id<10 AND mi.info_type_id=2;

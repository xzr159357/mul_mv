SELECT * FROM title t,movie_companies mc,cast_info ci WHERE t.id=mc.movie_id AND t.id=ci.movie_id AND mc.company_id<166 AND mc.company_type_id=2 AND ci.person_id>2661217 AND ci.role_id=4;

SELECT * FROM title t,movie_companies mc,cast_info ci,movie_info mi WHERE t.id=mc.movie_id AND t.id=ci.movie_id AND t.id=mi.movie_id AND mc.company_id<708 AND ci.person_id<3036144 AND ci.role_id>3;

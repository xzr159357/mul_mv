SELECT * FROM title t,movie_companies mc,cast_info ci,movie_info_idx mi_idx,movie_keyword mk WHERE t.id=mc.movie_id AND t.id=ci.movie_id AND t.id=mi_idx.movie_id AND t.id=mk.movie_id AND t.kind_id<2 AND mc.company_id>80011 AND ci.person_id=613664 AND ci.role_id=1;

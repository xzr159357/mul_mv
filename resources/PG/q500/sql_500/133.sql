SELECT * FROM title t,cast_info ci,movie_info mi WHERE t.id=ci.movie_id AND t.id=mi.movie_id AND t.kind_id<7 AND t.production_year>1993 AND ci.person_id>2542204;

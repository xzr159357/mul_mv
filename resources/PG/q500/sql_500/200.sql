SELECT * FROM title t,cast_info ci,movie_info mi,movie_keyword mk WHERE t.id=ci.movie_id AND t.id=mi.movie_id AND t.id=mk.movie_id AND t.kind_id=7 AND t.production_year<2011 AND ci.person_id>2989235;

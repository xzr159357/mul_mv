SELECT * FROM title t,cast_info ci,movie_keyword mk WHERE t.id=ci.movie_id AND t.id=mk.movie_id AND t.kind_id=1 AND t.production_year>2005;

SELECT * FROM title t,movie_info mi,movie_keyword mk WHERE t.id=mi.movie_id AND t.id=mk.movie_id AND t.production_year>2012 AND mk.keyword_id<13699;

SELECT * FROM title t,movie_keyword mk WHERE t.id=mk.movie_id AND t.kind_id<3 AND t.production_year>1997;

SELECT * FROM title t,movie_companies mc WHERE t.id=mc.movie_id AND t.kind_id<7 AND t.production_year<2009;

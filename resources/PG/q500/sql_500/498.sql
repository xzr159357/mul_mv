SELECT * FROM title t,movie_companies mc,movie_info mi WHERE t.id=mc.movie_id AND t.id=mi.movie_id AND t.production_year>2004;

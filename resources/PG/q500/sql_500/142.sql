SELECT * FROM title t,movie_companies mc WHERE t.id=mc.movie_id AND t.production_year>1963 AND mc.company_id<19;

SELECT * FROM title t,movie_companies mc WHERE t.id=mc.movie_id AND t.production_year>1996 AND mc.company_id>11;

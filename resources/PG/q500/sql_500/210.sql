SELECT * FROM title t,movie_companies mc WHERE t.id=mc.movie_id AND t.production_year>1984 AND mc.company_id<7179 AND mc.company_type_id=2;

SELECT * FROM title t,movie_companies mc,movie_info mi WHERE t.id=mc.movie_id AND t.id=mi.movie_id AND t.kind_id<7 AND t.production_year=2007 AND mc.company_type_id>1 AND mi.info_type_id>16;

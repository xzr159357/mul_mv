SELECT * FROM title t,movie_companies mc,movie_info mi WHERE t.id=mc.movie_id AND t.id=mi.movie_id AND mc.company_type_id<2 AND mi.info_type_id=6;

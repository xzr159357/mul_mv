SELECT * FROM title t,movie_info mi WHERE t.id=mi.movie_id AND t.production_year>1998 AND mi.info_type_id>103;

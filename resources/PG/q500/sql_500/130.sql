SELECT * FROM title t,movie_info mi WHERE t.id=mi.movie_id AND t.kind_id>1 AND t.production_year=2003 AND mi.info_type_id>17;

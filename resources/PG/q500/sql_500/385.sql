SELECT * FROM title t,movie_companies mc,movie_info mi,movie_info_idx mi_idx WHERE t.id=mc.movie_id AND t.id=mi.movie_id AND t.id=mi_idx.movie_id AND t.production_year>1998 AND mi.info_type_id<7;

SELECT * FROM title t,movie_companies mc,movie_info mi,movie_info_idx mi_idx WHERE t.id=mc.movie_id AND t.id=mi.movie_id AND t.id=mi_idx.movie_id AND mc.company_id<11369 AND mi.info_type_id>107;

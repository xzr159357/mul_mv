SELECT * FROM title t,movie_info_idx mi_idx WHERE t.id=mi_idx.movie_id AND t.kind_id=1 AND t.production_year<1975 AND mi_idx.info_type_id=100;

SELECT * FROM title t,movie_info_idx mi_idx,movie_keyword mk WHERE t.id=mi_idx.movie_id AND t.id=mk.movie_id AND t.kind_id<7 AND t.production_year=2010 AND mk.keyword_id<2849;

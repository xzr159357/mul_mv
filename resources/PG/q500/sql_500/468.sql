SELECT * FROM title t,movie_companies mc,movie_info_idx mi_idx,movie_keyword mk WHERE t.id=mc.movie_id AND t.id=mi_idx.movie_id AND t.id=mk.movie_id AND mc.company_id>47026 AND mc.company_type_id<2;

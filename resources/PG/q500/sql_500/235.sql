SELECT * FROM title t,cast_info ci,movie_info_idx mi_idx WHERE t.id=ci.movie_id AND t.id=mi_idx.movie_id AND t.kind_id=7 AND ci.person_id>1187578 AND ci.role_id<11;

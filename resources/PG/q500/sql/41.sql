SELECT * FROM title t,cast_info ci,movie_info_idx mi_idx,movie_keyword mk WHERE t.id=ci.movie_id AND t.id=mi_idx.movie_id AND t.id=mk.movie_id AND ci.person_id<1717521 AND ci.role_id>2 AND mi_idx.info_type_id<100 AND mk.keyword_id>3617;

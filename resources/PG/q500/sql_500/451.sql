SELECT * FROM title t,cast_info ci,movie_info_idx mi_idx WHERE t.id=ci.movie_id AND t.id=mi_idx.movie_id;

SELECT * FROM title t,movie_companies mc,cast_info ci WHERE t.id=mc.movie_id AND t.id=ci.movie_id;

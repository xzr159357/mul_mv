SELECT * FROM title t,movie_companies mc,cast_info ci,movie_keyword mk WHERE t.id=mc.movie_id AND t.id=ci.movie_id AND t.id=mk.movie_id AND t.kind_id=1 AND ci.person_id=1675060 AND ci.role_id=1;

SELECT * FROM title t,movie_companies mc,cast_info ci,movie_info mi,movie_keyword mk WHERE t.id=mc.movie_id AND t.id=ci.movie_id AND t.id=mi.movie_id AND t.id=mk.movie_id AND mc.company_id=1627 AND mc.company_type_id>1 AND mk.keyword_id>9986;

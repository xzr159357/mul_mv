SELECT * FROM title t,movie_companies mc,movie_keyword mk WHERE t.id=mc.movie_id AND t.id=mk.movie_id AND mc.company_id>13331 AND mk.keyword_id=115;

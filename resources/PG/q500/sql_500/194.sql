SELECT * FROM title t,movie_keyword mk WHERE t.id=mk.movie_id AND t.production_year<1952 AND mk.keyword_id=137;

SELECT * FROM title t,movie_info mi,movie_keyword mk WHERE t.id=mi.movie_id AND t.id=mk.movie_id AND t.production_year>1991 AND mi.info_type_id>3 AND mk.keyword_id>13654;

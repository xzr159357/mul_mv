SELECT * FROM title t,movie_info mi,movie_keyword mk WHERE t.id=mi.movie_id AND t.id=mk.movie_id AND t.kind_id>2 AND mi.info_type_id=2;

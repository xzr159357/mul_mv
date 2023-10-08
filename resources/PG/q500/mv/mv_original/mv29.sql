select movie_companies.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year
 from movie_keyword,title,movie_companies
 where (movie_keyword.movie_id = title.id) And (movie_companies.movie_id = title.id) And (title.production_year > 2012)  And  (title.kind_id = 7)
select title.kind_id AS kind_id
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (title.kind_id > 1) And (movie_companies.movie_id = title.id)
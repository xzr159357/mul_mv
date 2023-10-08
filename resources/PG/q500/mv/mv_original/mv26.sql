select movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id
 from movie_keyword,title,movie_companies
 where (movie_keyword.movie_id = title.id) And (title.id = movie_companies.movie_id) And (movie_companies.company_id > 1688)  And  (movie_companies.company_type_id > 1)
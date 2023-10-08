select movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,movie_companies
 where (movie_keyword.movie_id = movie_companies.movie_id) And ((movie_keyword.keyword_id = 115) Or (movie_keyword.keyword_id = 3644)) And (movie_companies.company_id > 13331)
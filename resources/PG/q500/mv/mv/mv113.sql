create materialized view if not exists mv113 as select movie_companies.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,title,movie_companies
 where ((((movie_keyword.keyword_id < 1724) Or (movie_keyword.keyword_id = 74852))) Or (movie_keyword.keyword_id = 39091)) And (movie_keyword.movie_id = title.id) And (movie_companies.movie_id = title.id)
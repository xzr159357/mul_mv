select keyword.id AS id, keyword.keyword AS keyword, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
 from keyword,movie_companies,title,movie_keyword
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('sequel', 'revenge', 'based-on-novel')) And (movie_companies.movie_id = title.id) And (movie_companies.note IS NOT NULL) And (title.id = movie_keyword.movie_id)
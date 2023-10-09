select keyword.id AS id, keyword.keyword AS keyword, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_link.link_type_id AS link_type_id, title.production_year AS production_year, title.title AS title
 from movie_keyword,movie_link,keyword,title,movie_companies
 where (movie_companies.movie_id = movie_keyword.movie_id) And (movie_link.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_link.movie_id) And (keyword.keyword in ('sequel', 'revenge', 'based-on-novel')) And (title.production_year > 1950) And (movie_companies.note IS NOT NULL)
select keyword.id AS keyword_id_0, keyword.keyword AS keyword, link_type.id AS link_type_id_2, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
from keyword, link_type, movie_companies, movie_keyword, movie_link, title
 where (keyword.keyword in ('sequel', 'revenge', 'based-on-novel')) And (link_type.id = movie_link.link_type_id) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (movie_link.movie_id = movie_companies.movie_id) And (movie_link.movie_id = movie_keyword.movie_id) And (movie_link.movie_id = title.id) And (title.id = movie_keyword.movie_id)
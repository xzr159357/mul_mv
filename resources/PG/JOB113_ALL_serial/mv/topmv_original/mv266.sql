select movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
from movie_companies, title
 where (movie_companies.movie_id = title.id) And (title.production_year >= 2007)  And  (title.production_year <= 2008)  And  (title.title like '%Kung%Fu%Panda%')
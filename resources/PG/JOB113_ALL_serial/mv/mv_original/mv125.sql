select link_type.id AS id, link_type.link AS link, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note
from link_type, movie_companies, movie_link
 where (link_type.link like '%follows%') And (movie_companies.movie_id = movie_link.movie_id) And (movie_link.link_type_id = link_type.id)
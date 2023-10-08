create materialized view if not exists mv345 as select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS note
 from movie_companies,complete_cast,comp_cast_type
 where (movie_companies.movie_id = complete_cast.movie_id) And (movie_companies.note IS NULL) And (complete_cast.status_id = comp_cast_type.id) And (comp_cast_type.kind = 'complete')
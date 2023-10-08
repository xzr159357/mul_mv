select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, company_type.id AS company_type_id_2, company_type.kind AS company_type_kind_3, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, movie_companies.company_id AS company_id, movie_companies.note AS note
 from complete_cast,company_type,comp_cast_type,movie_companies
 where (movie_companies.movie_id = complete_cast.movie_id) And (complete_cast.status_id = comp_cast_type.id) And (movie_companies.company_type_id = company_type.id) And (company_type.kind = 'production companies') And (comp_cast_type.kind = 'complete') And (movie_companies.note IS NULL)
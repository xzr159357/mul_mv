select company_type.id AS company_type_id_0, company_type.kind AS kind, info_type.id AS info_type_id_2, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_info.info AS info, title.production_year AS production_year, title.title AS title
 from company_type,title,movie_companies,info_type,movie_info
 where (company_type.id = movie_companies.company_type_id) And (company_type.kind = 'production companies') And (title.id = movie_info.movie_id) And (movie_info.movie_id = movie_companies.movie_id) And (movie_companies.note not like '%(TV)%')  And  (movie_companies.note like '%(USA)%') And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American'))
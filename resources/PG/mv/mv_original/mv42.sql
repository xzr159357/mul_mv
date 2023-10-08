select company_type.kind AS kind, info_type.id AS id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_info.info AS info, title.production_year AS production_year, title.title AS title
 from movie_companies,info_type,title,movie_info,company_type
 where (movie_info.movie_id = movie_companies.movie_id) And (company_type.id = movie_companies.company_type_id) And (movie_companies.note not like '%(TV)%')  And  (movie_companies.note like '%(USA)%') And (movie_info.info_type_id = info_type.id) And (title.id = movie_info.movie_id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American')) And (movie_companies.company_type_id = company_type.id) And (company_type.kind = 'production companies')
# index_info = {
#     'aka_name': 'id',
#     'aka_title': 'id',
#     'cast_info': 'id',
#     'char_name': 'id',
#     'comp_cast_type': 'id',
#     'company_name': 'id',
#     'company_type': 'id',
#     'complete_cast': 'id',
#     'info_type': 'id',
#     'keyword': 'id',
#     'kind_type': 'id',
#     'link_type': 'id',
#     'movie_companies': 'id',
#     'movie_info_idx': 'id',
#     'movie_info': 'id',
#     'movie_keyword': 'id',
#     'movie_link': 'id',
#     'name': 'id',
#     'person_info': 'id',
#     'role_type': 'id',
#     'title': 'id'
# }
#
# index_mapping = {
#     'movie_companies': ['company_id', 'company_type_id', 'movie_id'],
#     'movie_info_idx': ['info_type_id', 'movie_id'],
#     'movie_info': ['info_type_id', 'movie_id'],
#     'person_info': ['info_type_id', 'person_id'],
#     'movie_keyword': ['keyword_id', 'movie_id'],
#     'aka_title': ['kind_id', 'movie_id'],
#     'title': ['kind_id'],
#     'movie_link': ['linked_movie_id', 'link_type_id', 'movie_id'],
#     'aka_name': ['person_id'],
#     'cast_info': ['movie_id', 'person_id', 'person_role_id', 'role_id'],
#     'complete_cast': ['movie_id'],
# }
#
# merged_index = {}
#
# for key in index_info.keys():
#     merged_index[key] = ['id']
#     if key in index_mapping:
#         merged_index[key] = merged_index[key] + index_mapping[key]
#
# print(merged_index)


index_dicts = {
	'aka_name': ['id', 'person_id'],
	'aka_title': ['id', 'kind_id', 'movie_id'],
	'cast_info': ['id', 'movie_id', 'person_id', 'person_role_id', 'role_id'],
	'char_name': ['id'],
	'comp_cast_type': ['id'],
	'company_name': ['id'],
	'company_type': ['id'],
	'complete_cast': ['id', 'movie_id'],
	'info_type': ['id'],
	'keyword': ['id'],
	'kind_type': ['id'],
	'link_type': ['id'],
	'movie_companies': ['id', 'company_id', 'company_type_id', 'movie_id'],
	'movie_info_idx': ['id', 'info_type_id', 'movie_id'],
	'movie_info': ['id', 'info_type_id', 'movie_id'],
	'movie_keyword': ['id', 'keyword_id', 'movie_id'],
	'movie_link': ['id', 'linked_movie_id', 'link_type_id', 'movie_id'],
	'name': ['id'],
	'person_info': ['id', 'info_type_id', 'person_id'],
	'role_type': ['id'],
	'title': ['id', 'kind_id']
}

# map_index = {att: k for k, v in index_dicts.items() for att in v}
#
# print(map_index)

from z3 import *
from procConf import getRawPath, DataType
from getCandidate import check_file_exists, getInitMVs, getJoinCandidate
from procCSVFile import saveTmpQueryMap
from parse_plan_json_PG import build_plan_trees, g_query_subs






def get_candidate_PG():
    # z3-sovle
    engine = "PG"
    solver = Solver()
    # 导入q和mv的路径
    prePath = getRawPath(DataType.Q)
    if prePath is None:
        print("Please check the config file")
        exit(1)
    mvPrePath = getRawPath(DataType.MV)
    if mvPrePath is None:
        print("Please check the config file")
        exit(1)
    # 检查文件/文件夹是否存在
    check_file_exists(engine)

    # 候选视图生成
    candidate_clusters = {}
    build_plan_trees(candidate_clusters, prePath, cur_engine=engine)
    # 视图排序
    idWithCnt, initIDS = getInitMVs(g_query_subs, candidate_clusters, method="topk")
    # 处理q-mv对应关系
    saveTmpQueryMap(g_query_subs, initIDS)
    # 创建候选试图
    getJoinCandidate(candidate_clusters, mvPrePath, initIDS, engine)


if __name__ == '__main__':
    get_candidate_PG()
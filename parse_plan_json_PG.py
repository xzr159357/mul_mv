import os
from parsePlanJson_PG import buildOnePlanTree_PG
from parsePlanJson import classifySubtree

g_candidate_clusters = {}
g_query_subs = {}


def build_plan_trees(clusters, parentPath, cur_engine='PG'):
    global g_candidate_clusters
    global g_query_subs
    sqlPath = parentPath + "/sql/"
    jsonPath = parentPath + "/json/"
    fileNames = os.listdir(sqlPath)
    try:
        fileNames = sorted(fileNames, key=lambda x: int(x[1:-4]))
    except:
        try:
            fileNames = sorted(fileNames, key=lambda x: (int(x.split(".")[0][:-1]), x.split(".")[0][-1]))
        except:
            pass

    for file in fileNames:
        sqlFile = sqlPath + "/" + file
        key, ext = os.path.splitext(os.path.basename(sqlFile))
        if ext != ".sql":
            continue
        jsonFile = jsonPath + "/" + key + ".json"
        if not os.path.exists(jsonFile):
            continue
        print("fileName:{}".format(file))

        # 解析一条执行计划
        queryId, planTrees = buildOnePlanTree_PG(sqlFile, jsonFile, analyze=True)
        if queryId is None or len(planTrees) == 0:
            continue

        # 合并操作
        myIds = []
        i = 0
        for planTree in planTrees:
            if len(planTree.relations) > 1:
                myIds.append(classifySubtree(clusters, planTree, cur_engine, False))
            i += 1
        if len(myIds) != 0:
            g_query_subs[key] = list(set(myIds))
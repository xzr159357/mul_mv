import pickle
import re
import json
import numpy as np
import matplotlib.pyplot as plt

def normalize_json(file_name):
    new_json_file = ""
    with open(file_name, 'r', encoding="utf-8") as f:
        lines = f.readlines()
        for line in lines:
            if line.find("QUERY PLAN") != -1:
                continue
            if line == "\n":
                continue
            if line.find("-------------") != -1:
                continue
            if re.findall(r"\(.*row\)", line):
                continue
            line = re.sub(r"[ ]*\+", "", line)
            new_json_file += line
    return new_json_file


def plot_neg_e_neg_x():
    # 定义 x 的范围
    x = np.linspace(-5, 5, 100)

    # 计算对应的函数值
    y = -np.exp(-x)

    # 绘制曲线
    plt.plot(x, y)
    plt.xlabel('x')
    plt.ylabel('f(x)')
    plt.title('Plot of f(x) = -e^-x')
    plt.grid(True)

    # 显示图形
    plt.show()




if __name__ == "__main__":
    # normalize_json("1b_52 (3).json")
    # file_name = open("1b_52 (5).json", "r", encoding='utf-8')
    # f = json.load(file_name)
    # print(f)
    plot_neg_e_neg_x()
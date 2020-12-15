# 思路
# 生成左括号的条件： 剩余的左括号数 大于 0
# 生成右括号的条件： 剩余右括号数 大于 剩余的左括号数
# 终止条件 l = 0 and r = 0
def generate_parenthesis(n)
    return [] if n == 0
    dfs(n, n, '', res=[])
    res
end

def dfs(l, r, path, res)
    # 终止条件
    if l == 0 and r == 0
        res << path
        return
    end
    # 当前层逻辑
    # 进入下一层
    bfs(l, r-1, path+')', res) if r > l
    bfs(l-1, r, path+'(', res) if l > 0
end
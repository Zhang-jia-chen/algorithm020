# 杨辉三角
def generate(num_rows)
    # 递归终止条件
    return [] if num_rows == 0
    return [[1]] if num_rows == 1
    # 当前层逻辑
    pre = generate(num_rows-1)
    res = []
    j = 0
    while j >= 0 && j <= num_rows-1
        num =   if j == 0 || j == num_rows-1
                    1
                else
                    pre[-1][j-1] + pre[-1][j]
                end
        j += 1
        res << num
    end
    pre << res
end
# p generate(5)
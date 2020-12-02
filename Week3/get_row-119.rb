# @param {Integer} row_index
# @return {Integer[]}
# 递归
# 记忆化技术的时间复杂度为 O(n)，空间复杂度为 O(n)
GetRowHash = { 0 => [1], 1 => [1,1] }
def get_row(row_index)
    # 递归终止条件
    return GetRowHash[row_index] if GetRowHash[row_index]
    # 递推关系
    res = []
    (0..row_index).each_with_index do |item, index|
        res <<  if index == 0 || index == row_index
                    1
                else
                    get_row(row_index-1)[index-1] + get_row(row_index-1)[index]
                end
    end
    # 记忆化技术
    GetRowHash[row_index] = res
    res
end
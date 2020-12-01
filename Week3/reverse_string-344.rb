# 第一种方式
def reverse_string(s)
    left,right = 0, s.length-1
    while left <= right
        s[left],s[right] = s[right], s[left]
        left += 1
        right -= 1
    end
    s
end
# s = ["h","e","l","l","o"]
# p reverse_string(s)

# 第二种方式 递归
# def reverse_string(l_index, r_index, s)
#     # 递归终止条件
#     return if l_index >= r_index
#     # 当前逻辑
#     s[l_index], s[r_index] = s[r_index], s[l_index]
#     # 到下一层去
#     reverse_string(l_index+1, r_index-1, s)
#     s
# end
# s = ["h","e","l","l","o"]
# p reverse_string(0, s.length - 1,s)

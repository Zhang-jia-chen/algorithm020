# 思路：
# 1. 统计 s 中每个字母的个数
# 2. 遍历 t, 每遇到一个字母就-1
def is_anagram(s, t)
    return false unless s.is_a? String
    return false unless t.is_a? String
    s_hash, t_hash = {},{}

    s.chars.each do |char|
        s_hash[char] = 1 if s_hash[char].nil?
        s_hash[char] += 1
    end
    t.chars.each do |char|
        t_hash[char] = 1 if t_hash[char].nil?
        t_hash[char] += 1
    end
    s_hash == t_hash
end
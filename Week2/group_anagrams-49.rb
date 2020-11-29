# 关键在于对排好序的字符串使用散列表进行统计
def group_anagrams(strs)
    return if strs.nil?
    return [] if strs == []
    strs_hash = {}
    strs.each do |str|
        ordered_str = str.chars.sort.join
        if strs_hash[ordered_str].nil?
            strs_hash[ordered_str] = [str]
        else
            strs_hash[ordered_str] = strs_hash[ordered_str] << str
        end
    end
    strs_hash.values
end
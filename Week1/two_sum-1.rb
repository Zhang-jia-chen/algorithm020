def two_sum(nums,target)
    return if nums.length < 2
    map = {}
    nums.each_with_index do |num, index|
        other_index = map[num]
        return [other_index,index] if other_index
        map[target-num] = index
    end
end
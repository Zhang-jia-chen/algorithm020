def move_zeroes(nums)
    i = 0
    nums.each_with_index do |num, index|
        if num !=0
            if index != i
                nums[i] = num
            end
            i += 1
        end
    end
    while i < nums.size
        nums[i] = 0
        i += 1
    end
end
def lemonade_change(bills)
    money = {5 => 0, 10 => 0, 20 => 0}
    bills.each do |bill|
        if bill == 5
            money[5] += 1
        elsif bill == 10
            money[10] += 1
            if money[5] < 1
                return false
            else
                money[5] -= 1
            end
        elsif bill == 20
            money[20] += 1
            if money[10] >= 1 and money[5] >= 1
                money[10] -= 1
                money[5] -= 1
            elsif money[5] >= 3
                money[5] -= 3
            else
              return false  
            end
        end
    end
    true
end
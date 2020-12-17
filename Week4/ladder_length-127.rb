def ladder_length(begin_word, end_word, word_list)
    
    word_list_hash = {}
    step = 1
    word_list.each do |word|
        word_list_hash[word] = true
    end
    letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    # 图的广度优先遍历，必须使用队列和表示是否访问过的 visited 哈希表
    visited = {}
    word_res = Queue.new
    word_res.push(begin_word)
    
    # 队列有值可迭代
    while (size = word_res.size) > 0
        step += 1
        # 迭代队列长度次
        size.times do
            # 出队列做事情
            word = word_res.pop
            begin_word.length.times do |index|
                letters.each do |char|
                    word_dup = word.dup
                    word_dup[index] = char
                    if word_list_hash[word_dup] && !visited[word_dup] && word_dup != word
                        if word_dup.eql? end_word
                            return step
                        end
                        # 子节点入队列
                        word_res << word_dup
                        # 入队列后标记已访问
                        visited[word_dup] = true
                    end
                end
            end
        end
    end
    0
end
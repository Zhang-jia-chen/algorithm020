def level_order(root)
    return [] unless root

    res = []
    # 初始化
    queue = Queue.new
    queue.push(root)
    # 迭代
    while (size = queue.size) > 0
        level_res = []
        size.times do
            #   出队列做事情
            node = queue.pop
            level_res << node.val
            #   入队列
            queue.push node.left if node.left
            queue.push node.right if node.right
        end
        res << level_res
    end
    res
end
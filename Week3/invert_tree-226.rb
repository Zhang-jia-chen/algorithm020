# 广度优先遍历 + 迭代
def invert_tree(root)
    return root if root.nil?
    
    queue = Queue.new
    queue.push(root)

    while queue.size > 0
        count = queue.size
        count.times do
            node = queue.pop
            node.left, node.right = node.right, node.left
            queue.push(node.left) if node.left
            queue.push(node.right) if node.right
        end
    end
    root
end
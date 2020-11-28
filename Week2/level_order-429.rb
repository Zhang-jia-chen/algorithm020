# 参考题解  [二叉树的四种遍历](https://leetcode-cn.com/problems/binary-tree-preorder-traversal/solution/tu-jie-er-cha-shu-de-si-chong-bian-li-by-z1m/)
# 思路
# 1. 从广度优先搜索演变而来
# 2. 层序遍历是一个一个节点访问的，以二叉树为例，访问了根节点，然后访问根节点的左右节点，需要把左右子节点先保存下来，然后再去一个一个访问左右子节点的左右子节点。
# 3. 思考的关键在于层序遍历是蛇形访问每层的节点
def levelOrder(root)
    return [] if root.nil?
    queue = Queue.new
    queue << root
    res = []
    while queue.size > 0
        level_nodes = []
        queue.size.times do
            node = queue.pop
            level_nodes << node.val
            if node.children
                node.children.each do |child|
                    queue << child
                end
            end
        end
        res << level_nodes
    end
    res
end
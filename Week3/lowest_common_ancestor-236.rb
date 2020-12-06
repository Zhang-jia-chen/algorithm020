def lowest_common_ancestor(root, p, q)
    if root.nil? || root == p || root == q
      return root
    end
    left = lowest_common_ancestor(root.left, p, q)
    right = lowest_common_ancestor(root.right, p, q)
    return right if left.nil?
    return left if right.nil?
    root
  end
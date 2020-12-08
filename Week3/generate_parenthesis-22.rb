# 思路
# 分两步1. 先生成所有可能的括号组合 2.找出所有有效的括号组合
# 这个可以使用深度优先遍历，为什么是深度优先而不是广度优先
# 画一个决策树，当n=1时生成的括号“((”,不符合条件，但是 n=2时，由 n=1这条路径能走到“(())”，并且符合条件。
# 如果是广度优先会把n=1这种情况排除。所以要使用深度优先遍历。
def generate_parenthesis(n)
    res = []
    generate(n).each do |s|
        res << s if is_valid(s)
    end
    res
end
# 生成所有括号
# 优化 可以使用迭代
def generate(n)
    res = []
    return res << '' if n == 0
    f1 = ['']
    n.times do |time|
        f2 = []
        f1_first = []
        f1.each do |s|
            f1_first << s + '('
            f1_first << s + ')'
        end
        f1_first.each do |s|
            f2 << s + '('
            f2 << s + ')'
        end
        f1 = f2
    end
    f1
end

# 判断括号是否有效
def is_valid(s)
    return false if s.length.odd? # 逻辑上没必要，但是可以加速判断
    pairs = {')' => '('}
    stack = []
    s.chars.each do |char|
        if pairs[char].nil?
            stack.push(char)
        else
            return false if stack.pop != pairs[char]
        end
    end
    return false if stack.length > 0
    true
end
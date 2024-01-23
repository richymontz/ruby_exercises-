#     5
#   /   \
#  3     7
# / \   / \
# 4  5 6   9

#Given a binary tree, 
#create a method that takes a node as input and returns the number of children it has.

class TreeNode
  attr_reader :name, :left_node, :right_node
  
  def initialize(name, left_node = nil, right_node = nil)
    @name = name
    @left_node = left_node
    @right_node = right_node
  end
end

def count_nodes(tree_node)
  return 0 if tree_node.nil?

  counter = 1

  counter += count_nodes(tree_node.left_node) if tree_node.left_node
  counter += count_nodes(tree_node.right_node) if tree_node.right_node

  counter
end

#! Refactored

# def count_nodes(node)
#   return 0 if node.nil?

#   1 + count_nodes(node.left_node) + count_nodes(node.right_node)
# end



tree_node = TreeNode.new(
  "5", 
  TreeNode.new("3", TreeNode.new("4", nil, nil), TreeNode.new("5", nil , nil)),
  TreeNode.new("7", TreeNode.new("6", nil, nil), TreeNode.new("9", nil, nil))
)


puts count_nodes(tree_node)
puts count_nodes(TreeNode.new("1", nil, nil))
puts count_nodes(nil)

class PolyTreeNode
  attr_accessor :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(n)
    if !@parent.nil?
      old_parent_kids = self.parent.children
      old_parent_kids.delete(self)
    end

    @parent = n

    if !@parent.nil? && !n.nil?
      n.children.push(self) if !n.children.include?(self)
    end

    @parent
  end

  def add_child(n)
    n.parent = self
  end

  def remove_child(n)
    self.children.include?(n) ? (n.parent = nil) : (raise "error")
  end


  def dfs(target_value)
    return self if self.value == target_value

    self.children.each do |child_node|
      x = child_node.dfs(target_value)
      return x if !x.nil?
    end

    nil
  end

  def bfs(target_value)
    queue = [self]

    until queue.empty?
      current_node = queue.shift
      return current_node if current_node.value == target_value

      queue += current_node.children if !current_node.children.empty?
    end
    nil
  end

end

require "set"

class GraphNode
    attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

 def bfs(starting_node, target_value)
    visited = Set.new()
    queue = [starting_node]

    until queue.empty?
        el = queue.shift 
        visited.add(el)
        if el.val == target_value
            return el
        else
            el.neighbors.each do |neighbor|
            queue << neighbor if !visited.include?(neighbor)
            end
        end
    end

    return nil
 end


 p bfs(a, "b")
 p bfs(a, "f")

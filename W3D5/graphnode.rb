require "set"

class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbor(node)
        neighbors << node
    end

    def inspect 
        {value: value,
        neighbors: neighbors.map {|neighbor| neighbor.value}
    }.inspect
    end


end

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()

        until queue.empty?
        current_node = queue.shift
            unless visited.include?(current_node)
                return current_node if current_node.value == target_value
                visited.add(current_node)
                queue.concat(current_node.neighbors)
            end
         end
        nil
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


# p bfs(a, "b")
p bfs(a, "f")
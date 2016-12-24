class Graph
  attr_reader :data
  class Edge
    attr_accessor :node, :weight
    def initialize(node, weight)
      @node = node
      @weight = weight
    end
  end
  def initialize(value)
    @data = value
    @adjacency_list = []
  end
  def add_edge(node, weight)
    edge = Edge.new(node, weight)
    @adjacency_list << edge
  end
  def to_s
    neighbors = ""
    @adjacency_list.each do |edge|
      neighbors += "[#{edge.node.data},#{edge.weight}] "
    end
    "#{@data} -> #{neighbors}"
  end
end

node_1 = Graph.new(1)
node_2 = Graph.new(2)
node_3 = Graph.new(3)

node_1.add_edge(node_2,4)
node_2.add_edge(node_3,2)

p node_1.to_s
p node_2.to_s
p node_3.to_s

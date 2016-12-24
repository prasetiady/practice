require "set.rb"

class Graph
  def initialize
    @nodes = {}
  end
  def add_edge(a, b)
    unless @nodes.has_key? a
      @nodes[a] = Set.new
    end
    unless @nodes.has_key? b
      @nodes[b] = Set.new
    end
    @nodes[a] << b
    @nodes[b] << a
  end
  def neighbor_of(a, visited = [])
    neighbor = [a]
    visited << a
    if @nodes.has_key? a
      @nodes[a].each do |node|
        unless visited.include? node
          visited << node
          neighbor += neighbor_of(node, visited)
        end
      end
    end
    neighbor
  end
end

def get_same_country(graph,n)
  aa = n.times.to_a # array astronaut
  asc = [] # array same country
  until aa.empty?
    a = aa.shift
    sc = graph.neighbor_of(a)
    asc << sc.size
    aa -= sc
  end
  asc
end

def calc_combination(a)
  c = 0
  (a.size - 1).times do |i|
    c += a[i] * a[i+1..-1].reduce(0,:+)
  end
  c
end

N, i = gets.split.map{|x| x.to_i}
graph = Graph.new
i.times do
  a, b = gets.split.map{|x| x.to_i}
  graph.add_edge(a, b)
end

sc = get_same_country(graph,N)
puts calc_combination(sc)

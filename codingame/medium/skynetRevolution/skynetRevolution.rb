STDOUT.sync = true # DO NOT REMOVE
class Graph
  Vertex = Struct.new(:name, :neighbours, :dist, :prev)
  def initialize(graph)
    @vertices = Hash.new{|h,k| h[k]=Vertex.new(k,[],Float::INFINITY)}
    @edges = {}
    graph.each do |(v1, v2, dist)|
      @vertices[v1].neighbours << v2
      @vertices[v2].neighbours << v1
      @edges[[v1, v2]] = @edges[[v2, v1]] = dist
    end
    @dijkstra_source = nil
  end
  def dijkstra(source)
    return  if @dijkstra_source == source
    q = @vertices.values
    q.each do |v|
      v.dist = Float::INFINITY
      v.prev = nil
    end
    @vertices[source].dist = 0
    until q.empty?
      u = q.min_by {|vertex| vertex.dist}
      break if u.dist == Float::INFINITY
      q.delete(u)
      u.neighbours.each do |v|
        vv = @vertices[v]
        if q.include?(vv)
          alt = u.dist + @edges[[u.name, v]]
          if alt < vv.dist
            vv.dist = alt
            vv.prev = u.name
          end
        end
      end
    end
    @dijkstra_source = source
  end
  def shortest_path(source, target)
    dijkstra(source)
    path = []
    u = target
    while u
      path.unshift(u)
      u = @vertices[u].prev
    end
    return path, @vertices[target].dist
  end
 
  def to_s
    "#<%s vertices=%p edges=%p>" % [self.class.name, @vertices.values, @edges] 
  end
end

@nodecount, @linkcount, @exitcount = gets.split(" ").collect {|x| x.to_i}

links = Array.new
exits = Array.new

@linkcount.times do
    node1, node2 = gets.split(" ")
    node1 = ":" + node1
    node2 = ":" + node2
    links.push([node1, node2, 1])
end

h = Graph.new(links)

@exitcount.times do
    ei = gets.chomp
    ei = ":" + ei
    exits.push(ei)
end

loop do
    agent = gets.chomp
    agent = ":" + agent
    
    source = ""
    target = ""
    shortest = 99
    
    exits.each {|x| 
        path, dist = h.shortest_path(x, agent)
        if dist < shortest
            shortest = dist
            source = path[-1]
            target = path[-2]
        end
    }

    source = source.sub(":","")
    target = target.sub(":","")
    
    puts "#{source} #{target}"
end

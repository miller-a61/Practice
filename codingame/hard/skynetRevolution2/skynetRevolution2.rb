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

#end of Graph class
#######################################################################################
#######################################################################################
#######################################################################################
def deleteExits (arr, exits)

    exits.each {|z|
    x = arr.index(z)
    if x != nil
        arr.delete_at(x)
    end
    }
    arr
end

#######################################################################################
#start of program
@nodecount, @linkcount, @exitcount = gets.split(" ").collect {|x| x.to_i}

#link arrays
links = Array.new
exitLinks = Array.new
nonExitLinks = Array.new

#node arrays
allNodes = Array.new
exits = Array.new
preExitNodes = Array.new
agentNextNode = Array.new

curTurn = 1

#initialize links and nodes
@linkcount.times do
    node1, node2 = gets.split(" ")
    #put the lowest number in node1
    if node1.to_i > node2.to_i
        tempx = node2
        node2 = node1
        node1 = tempx
    end
    
    node1 = ":" + node1
    node2 = ":" + node2
    links.push([node1, node2, 1])
    allNodes.push(node1)
    allNodes.push(node2)
    #STDERR.puts "node a: #{node1}, node b: #{node2}"
end

allNodes = allNodes.uniq

#main graph with all links
h = Graph.new(links)

#links.each {|x| STDERR.puts x}

@exitcount.times do
    ei = gets.chomp
    ei = ":" + ei
    exits.push(ei)
    #STDERR.puts ei
end

exits.each {|z|
    links.each {|y| #STDERR.puts "ex: #{z}, link: #{y[0]}, #{y[1]}"
        if y[0] == z
            exitLinks.push([y[1], z])
        end
        if y[1] == z
            exitLinks.push([y[0], z])
        end
    }
} 

#STDERR.puts exitLinks.join("=")

exitLinks.each {|x|
    preExitNodes.push(x[0])
}

#STDERR.puts "preexitnodes #{preExitNodes.join("-")}"

links.each {|x|
    y = exits.index(x[0])
    z = exits.index(x[1])
    if y == nil && z == nil
        nonExitLinks.push([x[0],x[1],1])
    end
}

#STDERR.puts nonExitLinks.join("#")

nonExitGraph = Graph.new(nonExitLinks)

#game loop
loop do
    agent = gets.chomp
    agent = ":" + agent
    
    agentNextNode = Array.new
    
    links.each {|x|
        if x[0] == agent
            agentNextNode.push(x[1])
        end
        if x[1] == agent
            agentNextNode.push(x[0])
        end
    }
       
    source = ""
    target = ""

    sources = Array.new
    targets = Array.new
    distances = Array.new

    oneHop = false
    oneHopSource = ""
    oneHopTarget = ""
    
    twoHopFirst = false
    twoHopSecond = false
    twoHopSource = ""
    twoHopTarget = ""

    twinFound = false
    twinSourceNode = ""
    twinTargetNode = ""
    
    deleteReason = ""
    
#######################################################################################
    #get the distance for the agent to every exit    
    exits.each {|x| 
        path, dist = h.shortest_path(x, agent)
        #STDERR.puts "path: #{path}, dist: #{dist}"
        #STDERR.puts "first: #{path[0]}, last: #{path[-1]}"
        
        #if the distance is one, that is the link that must be 
        #cut this turn
        if dist == 1
            #STDERR.puts "one hop: x: #{path[0]}, y: #{path[1]}"
            oneHopSource = path[0]
            oneHopTarget = path[1]
            oneHop = true
        end

        #save the two hop links separately
        #will only use if they are the only remaining links
        if dist == 2 && twoHopFirst == true && twoHopSecond == false
            findex = exits.index(path[0])
            lindex = exits.index(path[2])
            if findex != nil
                twoHopTarget = path[0]
                twoHopSource = path[1]
            end
            if lindex != nil
                twoHopTarget = path[2]
                twoHopSource = path[1]
            end
            twoHopSecond = true
        end   
        
        if dist == 2 && twoHopFirst == false && twoHopSecond == false
            twoHopFirst = true
            #STDERR.puts "twofirst: #{path}"
            findex = exits.index(path[0])
            lindex = exits.index(path[2])
            #STDERR.puts "zero: #{path[0]}, one: #{path[1]}, two: #{path[2]}"
            if findex != nil
                twoHopTarget = path[0]
                #STDERR.puts "findex"
            end
            if lindex != nil
                twoHopTarget = path[2]
                #STDERR.puts "lindex"
            end
            twoHopSource = path[1]

        end
        
        #STDERR.puts "exit index: #{exits.index(path[0])}, #{exits.index(path[-1])}||"
        #which end of the array contains the exit node
        #exit node becomes target
        #only pull targets that are more than two hops away
        findex = exits.index(path[0])
        lindex = exits.index(path[-1])
        
        if dist > 2
            if findex != nil
                sources.push(path[1])
                targets.push(path[0])
            end
            
            if lindex != nil
                sources.push(path[-2])
                targets.push(path[-1])
            end
            distances.push(dist)
        
        end
    } #end get the distance for the agent to every exit
    
#######################################################################################

    #find twinned pre-exit nodes (nodes tha have links to two exits)
    #if a twinned node is on a chained path 
    #that leads back to an agent next node it needs to be eliminatd 
    #that turn
    sortlinks = links.sort
 
    peSource = Array.new
    peTarget = Array.new
    twinSource = Array.new
    twinTarget = Array.new
    
    exits.each {|x| #STDERR.puts "exits: #{x}"
        sortlinks.each {|y| #STDERR.puts "links: #{y}"
        
            if y[0] == x #|| y[1] == x
                peSource.push(y[1])
                peTarget.push(x)
            end
            if y[1] == x
                peSource.push(y[0])
                peTarget.push(x)
            end
        }
    }
    
    for m in 0..peSource.length
        for n in 1..peSource.length
            
            if peTarget[m] != peTarget[n] && peSource[m] == peSource[n]
                #STDERR.puts "twin: exit a: #{peTarget[m]}, exit b: #{peTarget[n]}, twin: #{peSource[n]}"
                twinSource.push(peSource[m])
                twinTarget.push(peTarget[m])
                twinSource.push(peSource[n])
                twinTarget.push(peTarget[n])
            end
        end
    end
    
    #build a new graph with only the non-exit nodes and two twin exit links
    #get the shortest path to the exit
    twinSourceUniq = twinSource.uniq
    
    twinBackTrack = Array.new
    
    #STDERR.puts twinSourceUniq.join("-")
    twinSourceUniq.each {|x| 
            path, dist = nonExitGraph.shortest_path(x, agent)
            #STDERR.puts path.join(":")
            twinBackTrack.push(path)
    }
    
    #STDERR.puts agentNextNode.join("^")
    
    #go through the shortest path until you find 
    #a node that is not adjacent to an exit
    #which means the path is safe for the agent
    #at that node
    #or you reach a node that is in the agent next array
    #and is also adjacent to an exit

    twinBackTrack.each {|x|
        #STDERR.puts x.join("&")
        stopFound = false
        x.each {|y| #STDERR.puts y
            if preExitNodes.index(y) == nil && y != agent
                stopFound = true
                #STDERR.puts y
            end

        }
        #STDERR.puts "#{x}, #{stopFound}"
        if stopFound == false
            twinFound = true
            twinSourceNode = x[0]
            exitLinks.each {|z| #STDERR.puts z[1]
                if twinSourceNode == z[0]
                    twinTargetNode = z[1]
                end
                if twinSourceNode == z[1]
                    twinTargetNode = z[0]
                end
            }
        end
    }
       # STDERR.puts "twins: #{twinSourceNode} , #{twinTargetNode}"
    
#######################################################################################
    #print the length of the closest exits
    for k in 0..sources.length - 1
        #STDERR.puts "source: #{sources[k]}, target: #{targets[k]}, dist: #{distances[k]}"
    end

    #if there are multiple links of the same distance
    #choose one of the links coming out of the
    #source node with the most links
    maxLinks = 0
    curLinks = 1
    source = sources[0]
    target = targets[0]
    for i in 1..sources.length - 1
        #STDERR.puts "len check: x: #{sources[i - 1]}, y: #{sources[i]}, curlink: #{curLinks}"
        if sources[i - 1] == sources[i]
            curLinks += 1
            #STDERR.puts "if"
        else
            curLinks = 1
            #STDERR.puts "else"
        end
           
        if curLinks > maxLinks
            source = sources[i - 1]
            target = targets[i - 1]
            maxLinks = curLinks
        end
        
        #add one more link for the last item
        if i == sources.length - 1
        end
    
    end
    
    deleteReason = "default: closest link"

    #if the agent is only two hops away
    #from two different exits
    #override above and select one
    #of those two
    #or if the only remaining link is two hops awasy
    #STDERR.puts "src len: #{sources.length}"
    if twoHopSecond == true || sources.length == 0
        source = twoHopSource
        target = twoHopTarget
        deleteReason = "priority: two exits two hops"
    end
    
    #if there is a node with links to two or more
    #exit nodes, remove those links as quickly as
    #possible

    if twinFound == true
        source = twinSourceNode
        target = twinTargetNode
        deleteReason = "priority: twins"
    end
    
    #if the agent is only one hop away
    #from an exit, override the chosen link
    #with the one adjacent to the exit
    if oneHop == true
        source = oneHopSource
        target = oneHopTarget
        deleteReason = "priority: adjacent exit"    
    end
    
    #remove : for printing
    isource = source.sub(":","")
    itarget = target.sub(":","")
    
    puts "#{isource} #{itarget}"
    STDERR.puts "Link deleted: #{isource}, #{itarget}, turn: #{curTurn}, reason: #{deleteReason}"
=begin    
    case curTurn
        when 1 then puts "16 27"
        when 9 then puts "17 16"
        when 14 then puts "8 16"
        when 18 then puts "11 0"
        when 22 then puts "17 18"
        else puts "#{isource} #{itarget}"
    end
    

=end
    curTurn += 1

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    #delete the chosen link from the links array    
    y = 0
    to_delete = -1
    links.each {|x|
        #STDERR.puts "src: #{source}, tgt: #{target}, l1: #{x[0]}, l2: #{x[1]}"
        if (source == x[0] && target == x[1]) || (source == x[1] && target == x[0])
            #STDERR.puts "inside delete"
            to_delete = y
        end    
        y += 1
    }
    #STDERR.puts "to delete: #{to_delete}"
    
    links.delete_at(to_delete)
=begin    
    for z in 0..links.length - 1
        STDERR.puts "index: #{z}, l1: #{links[z][0]}, l2: #{links[z][1]}"
    end
=end

    #refresh the graph with the deleted link removed
    h = Graph.new(links)
    #STDERR.puts h
#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

end

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
#old twin code
=begin    
    #chain the twin node back towards the agent
    #if the agent is one hop away from the end of the chain
    #this node takes priority
    twinSourceUniq = twinSource.uniq 
    tsSec = Array.new
    
    twinSourceUniq.each {|y| #STDERR.puts "tsu: #{y}"
        backTrack = allNodes
        
        links.each {|z| #STDERR.puts "#{z[0]}, #{z[1]}"
            if z[0] == y || z[1] == y
                #STDERR.puts "#{z[0]}, #{z[1]}"
                tsSec.push([z[0], y])
                tsSec.push([z[1], y])
            end
        }
        
        tsSec = tsSec.uniq
        STDERR.puts tsSec.join("-")
        #delete current node
        
        #while tsSec.length > 0 || chainFound == false
            
            x = tsSec.index(y)
            if x != nil
                tsSec.delete_at(x)
            end
            x = backTrack.index(y)
            if x != nil
                backTrack.delete_at(x)
            end
            
            #delete exit nodes
            deleteExits(tsSec, exits)
            deleteExits(backTrack, exits)
            
            delCell = Array.new
            tsSec.each {|x|
                y = preExitNodes.index(x)
                if y == nil
                    delCell.push(x)
                end
            }
            #STDERR.puts delCell.join ("^")
           
            delCell.each {|x| tsSec.delete_at(tsSec.index(x))
                if backTrack.index(x) != nil
                    backTrack.delete_at(backTrack.index(x))
                end
            }
    
            tsSec.each {|x|
                y = backTrack.index(x)
                if y != nil
                    backTrack.delete_at(y)
                end
            }
            #STDERR.puts tsSec.join("-")   
            #STDERR.puts backTrack.join ("~")
            
            #scan the nodes to see if they are adjacent to an agent adjacent node
            tsSec.each {|x|
                agentNextNode.each {|y|
                    links.each {|z|
                    
                        if links[0] == x && links[1] == y
                            chainFound = true
                        end
                        if links[1] == x && links[0] == y
                            chainFound = true
                        end
                    }
                }
            }
            STDERR.puts "chain found: #{chainFound}"


        #end
        
    }
=end   
STDOUT.sync = true # DO NOT REMOVE
# Don't let the machines win. You are humanity's last hope...

@width = gets.to_i # the number of cells on the X axis
#STDERR.puts "width: #{@witdh}"
width = 0
grid = Hash.new
col = 0

@height = gets.to_i # the number of cells on the Y axis
#STDERR.puts "height: #{@height}"

#build grid of cells that exist
@height.times do
    line = gets.chomp
    arr = line.split('')    
    #STDERR.puts "arr width: #{arr.length}"
    width = arr.length
    #STDERR.puts "width: #{width}"
    row = 0
    arr.each{|a|
        if a == '0'
            grid.store("#{row}#{col}", "#{row} #{col}")
            STDERR.puts "#{row}, #{col}"
        end
        row += 1
    }
    col += 1       
end

#traverse the list looking for neighbors

grid.each_key {|key| 
    
    STDERR.puts "start: #{key}"
    
    output = Array.new
    output[0] = grid.fetch(key)
    
    rfound = false
    STDERR.puts "before: #{key[0].to_i + 1}, #{width - 1}, #{rfound} "
    for r in key[0].to_i + 1..width - 1 do
        
        right = r.to_s + key[1]
        STDERR.puts "during: #{right}, #{rfound}"
        
        if grid.has_key?(right) && rfound == false
            
            output[1] = grid.fetch(right)
            rfound = true
            STDERR.puts "found #{right}, #{grid.fetch(right)}, #{output[1]}"
        end
        STDERR.puts "r: #{r}"
    end
    if rfound == false
        output[1] = '-1 -1'
        STDERR.puts "second if"
    end
  
    dfound = false
    for d in key[1].to_i + 1..@height - 1 do
        
        down = key[0] + d.to_s
        STDERR.puts "during: #{down}, #{dfound}"
        
        if grid.has_key?(down) && dfound == false
            
            output[2] = grid.fetch(down)
            dfound = true
            STDERR.puts "found #{down}, #{grid.fetch(down)}, #{output[2]}"
        end
        STDERR.puts "d: #{d}"
    end
    if dfound == false
        output[2] = '-1 -1'
        STDERR.puts "second if"
    end  
    
    puts output.join(' ')
    STDERR.puts "end turn: #{output.join(' ')}"
    STDERR.puts "-----------------------------"

}


# Three coordinates: a node, its right neighbor, its bottom neighbor

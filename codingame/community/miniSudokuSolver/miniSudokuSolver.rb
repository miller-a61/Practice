def solve(grid)
    10.times do   
        for i in 0..3 do
            for j in 0..3 do
                #STDERR.puts grid[i][j]
                check = ""
                if grid[i][j] == "0"
                    #STDERR.puts "inside if i: #{i}, j: #{j}"
                    check =  grid[i][0] + grid[i][1] + grid[i][2] + grid[i][3] + grid[0][j] + grid[1][j] + grid[2][j] + grid[3][j]
                    check = check.gsub!("0","")
                    check = check.split("").uniq.sort.join("")
                    #STDERR.puts "check len: #{check.length}"
                    if check.length == 3
                        #STDERR.puts "check: #{check}"
                        if check == "234"
                            #STDERR.puts "234 = #{check}"
                            grid[i][j] = "1"
                        elsif check == "134"
                            grid[i][j] = "2"
                        elsif check == "124"
                            grid[i][j] = "3"
                        elsif check == "123"
                            grid[i][j] = "4"
                        end
                    end
                end
                #STDERR.puts grid.join("-")
            end
        end
    end
end

grid = Array.new
grid[0] = gets.chomp.split("")
grid[1] = gets.chomp.split("")
grid[2] = gets.chomp.split("")
grid[3] = gets.chomp.split("")

STDERR.puts grid.join(":")

done = false
solve(grid)

STDERR.puts "first solve: #{grid.join(":")}"    

x = grid.join("")

if x.index("0") == nil
    done = true
end

while not done do
    for m in 0..3 do
        if done == true
            break
        end
        for k in 0..3 do
            if done == true
                 break
            end
            grid[0] = x[0,4].split("")
            grid[1] = x[4,4].split("")
            grid[2] = x[8,4].split("")
            grid[3] = x[12,4].split("")
            STDERR.puts "k: #{k}, m: #{m}, grid: #{grid.join(":")}"
            STDERR.puts "x: #{x}"
            STDERR.puts "grid row: #{grid[k].join("")}"
            if grid[k].join("") == "0000"
                grid[k][0] = (m + 1).to_s
                STDERR.puts "bfore solve: #{grid.join("")}"
                solve(grid)
                STDERR.puts "grid2 after: #{grid.join("")}"
                STDERR.puts "corner chk: #{grid[0][0].to_i + grid[0][1].to_i + grid[1][0].to_i + grid[1][1].to_i}"
                if grid[0][0].to_i + grid[0][1].to_i + grid[1][0].to_i + grid[1][1].to_i == 10
                   done = true
                   #grid1 = grid2
                   STDERR.puts "corner check pass"
                end
                STDERR.puts "end corner check"
            end
        end
    end
end
STDERR.puts grid.join(":")

puts grid[0].join("")
puts grid[1].join("")
puts grid[2].join("")
puts grid[3].join("")
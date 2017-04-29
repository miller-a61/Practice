# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@a, @b, @c, @d = gets.split(" ").collect {|x| x.to_i}
STDERR.puts "#{@a}, #{@b}, #{@c}, #{@d}"
inst = Array.new
gets.to_i.times {inst.push(gets.chomp)}

inst.each {|x| STDERR.puts x}

curr = 0
timeout = 0

while true do
    STDERR.puts "#{@a} #{@b} #{@c} #{@d} : inst #{timeout} : action #{inst[curr]}"
    exe = inst[curr].split    
    #STDERR.puts curr
    
    if exe[0] == "MOV"
        case exe[1]
        when "a" then   case exe[2]
                        when "b" then @a = @b
                        when "c" then @a = @c
                        when "d" then @a = @d
                        else @a = exe[2].to_i
                        end
        when "b" then   case exe[2]
                        when "a" then @b = @a
                        when "c" then @b = @c
                        when "d" then @b = @d
                        else @b = exe[2].to_i
                        end
            
        when "c" then case exe[2]
                        when "a" then @c = @a
                        when "b" then @c = @b
                        when "d" then @c = @d
                        else @c = exe[2].to_i
                        end
                
        when "d" then case exe[2]
                        when "a" then @d = @a
                        when "b" then @d = @b
                        when "c" then @d = @c
                        else @d = exe[2].to_i
                        end
        end
    elsif exe[0] == "ADD"
        case exe[1]
        when "a" then case exe[2]
                        when "a" then case exe[3]
                                        when "a" then @a = @a + @a
                                        when "b" then @a = @a + @b
                                        when "c" then @a = @a + @c
                                        when "d" then @a = @a + @d
                                        else @a = @a + exe[3].to_i
                                        end
                        when "b" then case exe[3]
                                        when "a" then @a = @b + @a
                                        when "b" then @a = @b + @b
                                        when "c" then @a = @b + @c
                                        when "d" then @a = @b + @d
                                        else @a = @b + exe[3].to_i
                                        end
                        when "c" then case exe[3]
                                        when "a" then @a = @c + @a
                                        when "b" then @a = @c + @b
                                        when "c" then @a = @c + @c
                                        when "d" then @a = @c + @d
                                        else @a = @c + exe[3].to_i
                                        end
                        when "d" then case exe[3]
                                        when "a" then @a = @d + @a
                                        when "b" then @a = @d + @b
                                        when "c" then @a = @d + @c
                                        when "d" then @a = @d + @d
                                        else @a = @d + exe[3].to_i
                                        end
                        else @a = exe[2].to_i + exe[3].to_i
                        end
        when "b" then case exe[2]
                        when "a" then case exe[3]
                                        when "a" then @b = @a + @a
                                        when "b" then @b = @a + @b
                                        when "c" then @b = @a + @c
                                        when "d" then @b = @a + @d
                                        else @b = @a + exe[3].to_i
                                        end
                        when "b" then case exe[3]
                                        when "a" then @b = @b + @a
                                        when "b" then @b = @b + @b
                                        when "c" then @b = @b + @c
                                        when "d" then @b = @b + @d
                                        else @b = @b + exe[3].to_i
                                        end  
                        when "c" then case exe[3]
                                        when "a" then @b = @c + @a
                                        when "b" then @b = @c + @b
                                        when "c" then @b = @c + @c
                                        when "d" then @b = @c + @d                                            
                                        else @b = @c + exe[3].to_i
                                        end
                        when "d" then case exe[3]
                                        when "a" then @b = @d + @a
                                        when "b" then @b = @d + @b
                                        when "c" then @b = @d + @c
                                        when "d" then @b = @d + @d
                                        else @b = @d + exe[3].to_i
                                        end
                        else @b = exe[2].to_i + exe[3].to_i
                        end
            
        when "c" then case exe[2]
                        when "a" then case exe[3]
                                        when "a" then @c = @a + @a
                                        when "b" then @c = @a + @b
                                        when "c" then @c = @a + @c
                                        when "d" then @c = @a + @d
                                        else @c = @a + exe[3].to_i
                                        end
                        when "b" then case exe[3]
                                        when "a" then @c = @b + @a
                                        when "b" then @c = @b + @b
                                        when "c" then @c = @b + @c
                                        when "d" then @c = @b + @d
                                        else @c = @b + exe[3].to_i
                                        end
                        when "c" then case exe[3]
                                        when "a" then @c = @c + @a
                                        when "b" then @c = @c + @b
                                        when "c" then @c = @c + @c
                                        when "d" then @c = @c + @d
                                        else @c = @c + exe[3].to_i
                                        end
                        when "d" then case exe[3]
                                        when "a" then @c = @d + @a
                                        when "b" then @c = @d + @b
                                        when "c" then @c = @d + @c
                                        when "d" then @c = @d + @d
                                        else @c = @d + exe[3].to_i
                                        end
                        else @c = exe[2].to_i + exe[3].to_i
                        end              
        when "d" then case exe[2]
                        when "a" then case exe[3]
                                        when "a" then @d = @a + @a
                                        when "b" then @d = @a + @b
                                        when "c" then @d = @a + @c
                                        when "d" then @d = @a + @d
                                        else @d = @a + exe[3].to_i
                                        end
                        when "b" then case exe[3]
                                        when "a" then @d = @b + @a
                                        when "b" then @d = @b + @b
                                        when "c" then @d = @b + @c
                                        when "d" then @d = @b + @d
                                        else @d = @b + exe[3].to_i
                                        end
                        when "c" then case exe[3]
                                        when "a" then @d = @c + @a
                                        when "b" then @d = @c + @b
                                        when "c" then @d = @c + @c
                                        when "d" then @d = @c + @d
                                        else @d = @c + exe[3].to_i
                                        end
                        when "d" then case exe[3]
                                        when "a" then @d = @d + @a
                                        when "b" then @d = @d + @b
                                        when "c" then @d = @d + @c
                                        when "d" then @d = @d + @d
                                        else @d = @d + exe[3].to_i
                                        end
                        else @d = exe[2].to_i + exe[3].to_i
                        end
        end
    elsif exe[0] == "SUB"
        case exe[1]
        when "a" then case exe[2]
                        when "a" then case exe[3]
                                        when "a" then @a = @a - @a
                                        when "b" then @a = @a - @b
                                        when "c" then @a = @a - @c
                                        when "d" then @a = @a - @d
                                        else @a = @a - exe[3].to_i
                                        end
                        when "b" then case exe[3]
                                        when "a" then @a = @b - @a
                                        when "b" then @a = @b - @b
                                        when "c" then @a = @b - @c
                                        when "d" then @a = @b - @d
                                        else @a = @b - exe[3].to_i
                                        end
                        when "c" then case exe[3]
                                        when "a" then @a = @c - @a
                                        when "b" then @a = @c - @b
                                        when "c" then @a = @c - @c
                                        when "d" then @a = @c - @d
                                        else @a = @c - exe[3].to_i
                                        end
                        when "d" then case exe[3]
                                        when "a" then @a = @d - @a
                                        when "b" then @a = @d - @b
                                        when "c" then @a = @d - @c
                                        when "d" then @a = @d - @d
                                        else @a = @d - exe[3].to_i
                                        end
                        else case exe[3]
                                when "a" then @a = exe[2].to_i - @a
                                when "b" then @a = exe[2].to_i - @b
                                when "c" then @a = exe[2].to_i - @c
                                when "d" then @a = exe[2].to_i - @d
                                else @a = exe[2].to_i - exe[3].to_i
                                end
                        end
        when "b" then case exe[2]
                        when "a" then case exe[3]
                                        when "a" then @b = @a - @a
                                        when "b" then @b = @a - @b
                                        when "c" then @b = @a - @c
                                        when "d" then @b = @a - @d
                                        else @b = @a - exe[3].to_i
                                        end
                        when "b" then case exe[3]
                                        when "a" then @b = @b - @a
                                        when "b" then @b = @b - @b
                                        when "c" then @b = @b - @c
                                        when "d" then @b = @b - @d
                                        else @b = @b - exe[3].to_i
                                        end  
                        when "c" then case exe[3]
                                        when "a" then @b = @c - @a
                                        when "b" then @b = @c - @b
                                        when "c" then @b = @c - @c
                                        when "d" then @b = @c - @d                                            
                                        else @b = @c - exe[3].to_i
                                        end
                        when "d" then case exe[3]
                                        when "a" then @b = @d - @a
                                        when "b" then @b = @d - @b
                                        when "c" then @b = @d - @c
                                        when "d" then @b = @d - @d
                                        else @b = @d - exe[3].to_i
                                        end
                        else case exe[3]
                                when "a" then @b = exe[2].to_i - @a
                                when "b" then @b = exe[2].to_i - @b
                                when "c" then @b = exe[2].to_i - @c
                                when "d" then @b = exe[2].to_i - @d
                                else @b = exe[2].to_i - exe[3].to_i
                                end
                        end
            
        when "c" then case exe[2]
                        when "a" then case exe[3]
                                        when "a" then @c = @a - @a
                                        when "b" then @c = @a - @b
                                        when "c" then @c = @a - @c
                                        when "d" then @c = @a - @d
                                        else @c = @a - exe[3].to_i
                                        end
                        when "b" then case exe[3]
                                        when "a" then @c = @b - @a
                                        when "b" then @c = @b - @b
                                        when "c" then @c = @b - @c
                                        when "d" then @c = @b - @d
                                        else @c = @b - exe[3].to_i
                                        end
                        when "c" then case exe[3]
                                        when "a" then @c = @c - @a
                                        when "b" then @c = @c - @b
                                        when "c" then @c = @c - @c
                                        when "d" then @c = @c - @d
                                        else @c = @c - exe[3].to_i
                                        end
                        when "d" then case exe[3]
                                        when "a" then @c = @d - @a
                                        when "b" then @c = @d - @b
                                        when "c" then @c = @d - @c
                                        when "d" then @c = @d - @d
                                        else @c = @d - exe[3].to_i
                                        end
                        else case exe[3]
                                when "a" then @c = exe[2].to_i - @a
                                when "b" then @c = exe[2].to_i - @b
                                when "c" then @c = exe[2].to_i - @c
                                when "d" then @c = exe[2].to_i - @d
                                else @c = exe[2].to_i - exe[3].to_i
                                end
                        end           
        when "d" then case exe[2]
                        when "a" then case exe[3]
                                        when "a" then @d = @a - @a
                                        when "b" then @d = @a - @b
                                        when "c" then @d = @a - @c
                                        when "d" then @d = @a - @d
                                        else @d = @a - exe[3].to_i
                                        end
                        when "b" then case exe[3]
                                        when "a" then @d = @b - @a
                                        when "b" then @d = @b - @b
                                        when "c" then @d = @b - @c
                                        when "d" then @d = @b - @d
                                        else @d = @b - exe[3].to_i
                                        end
                        when "c" then case exe[3]
                                        when "a" then @d = @c - @a
                                        when "b" then @d = @c - @b
                                        when "c" then @d = @c - @c
                                        when "d" then @d = @c - @d
                                        else @d = @c - exe[3].to_i
                                        end
                        when "d" then case exe[3]
                                        when "a" then @d = @d - @a
                                        when "b" then @d = @d - @b
                                        when "c" then @d = @d - @c
                                        when "d" then @d = @d - @d
                                        else @d = @d - exe[3].to_i
                                        end
                        else case exe[3]
                                when "a" then @d = exe[2].to_i - @a
                                when "b" then @d = exe[2].to_i - @b
                                when "c" then @d = exe[2].to_i - @c
                                when "d" then @d = exe[2].to_i - @d
                                else @d = exe[2].to_i - exe[3].to_i
                                end
                        end 
        end
    elsif exe[0] == "JNE"
        #STDERR.puts "Jump: #{exe[1]}, #{exe[2]}, #{exe[3]}"
        case exe[2]
        when "a" then   case exe[3]
                        when "b" then @a != @b && curr = exe[1].to_i - 1
                        when "c" then @a != @c && curr = exe[1].to_i - 1
                        when "d" then @a != @d && curr = exe[1].to_i - 1
                        else @a != exe[3].to_i && curr = exe[1].to_i - 1
                        end
        when "b" then   case exe[3]
                        when "a" then @b != @a && curr = exe[1].to_i - 1
                        when "c" then @b != @c && curr = exe[1].to_i - 1
                        when "d" then @b != @d && curr = exe[1].to_i - 1
                        else @b != exe[3].to_i && curr = exe[1].to_i - 1
                        end
            
        when "c" then case exe[3]
                        when "a" then @c != @a && curr = exe[1].to_i - 1
                        when "b" then @c != @b && curr = exe[1].to_i - 1
                        when "d" then @c != @d && curr = exe[1].to_i - 1
                        else @c != exe[3].to_i && curr = exe[1].to_i - 1
                        end
                
        when "d" then case exe[3]
                        when "a" then @d != @a && curr = exe[1].to_i - 1
                        when "b" then @d != @b && curr = exe[1].to_i - 1
                        when "c" then @d != @c && curr = exe[1].to_i - 1
                        else @d != exe[3].to_i && curr = exe[1].to_i - 1
                        end
        end    
    end

    curr < inst.length - 1 ? curr += 1 : break
    timeout += 1
    timeout > 5000000 && break

end


# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

puts "#{@a} #{@b} #{@c} #{@d}"
#puts "30 0 0 -7" nested
#puts "105 0 0 0"




class Towers_of_Hanoi
  A = 0; B = 2; C = 1

  def initialize(n)
    @n = n
    @stack = []
    @stack[A] = (1..@n).to_a.reverse   # from
    @stack[B] = []                     # to
    @stack[C] = []                     # help
    @turns = gets.to_i
    @min = 2**@n - 1
    @act = (@turns < @min) ? @turns : @min
    STDERR.puts "#tower height: #{@n}, num turns: #{@turns}, min turns #{@min}, actual turns: #{@act}"
  end

  def move(from, to, n)
    if n == 1 then
      @stack[to].push(@stack[from].pop)
      output
    elsif n > 1 then
      help = ([A,B,C] - [from,to])[0]  # get help-stack
      move(from, help, n-1)
      move(from, to, 1)
      move(help, to, n-1)
    end
  end

  def run
    output
    move(A, B, @n)
  end

  def output
    
    #STDERR.puts @act  
    if @act == 0
        #p @stack
        
        x = @n - 1
        width = 2*@n + 1
        aheight = @stack[0].length
        cheight = @stack[1].length
        bheight = @stack[2].length
        
        #STDERR.puts "#{width}, #{aheight}, #{cheight}, #{bheight}\n"
        @n.times do
           line = ""
           
            m = @stack[0][x].to_i * 2 + 1
            m = "#" * m
            o = @stack[1][x].to_i * 2 + 1
            o = "#" * o
            q = @stack[2][x].to_i * 2 + 1
            q = "#" * q
            
            d = @n - @stack[0][x].to_i
            e = @n - @stack[1][x].to_i
            f = @n - @stack[2][x].to_i
            STDERR.puts "#{d}, #{e}, #{f}"
            
            if x >= aheight 
                line += " " * @n + "|" + " " * (@n + 1)
            else
                line += " " *  d + m + " " * (d + 1)
            end
               
            if x >= cheight 
                line += " " * @n + "|" + " " * (@n + 1)
            else
                line += " " * e + o + " " * (e + 1)
            end 

            if x >= bheight 
                line += " " * @n + "|"
            else
                line += " " * f + q
            end
          
            puts line
            x -= 1
        end
        p @min
    end
    
    @act = @act - 1
    
  end
  private :output

end

n = gets.to_i

toh = Towers_of_Hanoi.new(n)

toh.run


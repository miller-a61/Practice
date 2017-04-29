class Queen
  attr_reader :count
 
  def initialize(num=8, out=true)
    @num   = num
    @out   = out
    @row   = *0...@num
    @frame = "+-" + "--" * @num + "+"
    @count = 0
    add = Array.new(2 * @num - 1, true)       # \ direction check
    sub = Array.new(2 * @num - 1, true)       # / direction check
    solve([], add, sub)
  end
 
  private
  def solve(row, add, sub)
    y = row.size
    if y == @num
      @count += 1
    else
      (@row-row).each do |x|
        next unless add[x+y] and sub[x-y]
        add[x+y] = sub[x-y] = false
        solve(row+[x], add, sub)
        add[x+y] = sub[x-y] = true
      end
    end
  end
end

@n = gets.to_i
puzzle = Queen.new(@n)
puts puzzle.count


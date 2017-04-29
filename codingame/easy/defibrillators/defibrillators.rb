
user_lon = gets.chomp.sub(',','.')
user_lat = gets.chomp.sub(',','.')

#STDERR.puts user_lon
#STDERR.puts user_lat

user_lon = user_lon.to_f
user_lat = user_lat.to_f

num_defib = gets.to_i
defib = []
prior_distance = 999999999
answer = ""

n = 0
num_defib.times do
    defib[n] = gets.chomp
    n += 1
end

#user_lon = user_lon/180.0 * Math::PI
#user_lat = user_lat/180.0 * Math::PI

#STDERR.puts "user long: #{user_lon}"
#STDERR.puts "user lat: #{user_lat}"
#STDERR.puts "num defib: #{num_defib}"

defib.each {|d| 
#STDERR.puts "defib info: #{d}"

current_defib = d.split(";")

current_defib[4] = current_defib[4].sub(",",".")
current_defib[5] = current_defib[5].sub(",",".")

name = current_defib[1]
defib_lon = current_defib[4].to_f
defib_lat = current_defib[5].to_f

#defib_lon = defib_lon/180.0 * Math::PI
#defib_lat = defib_lat/180.0 * Math::PI

#x = (defib_lon - user_lon) * Math.cos((user_lat + defib_lat)/2.0)
#y = defib_lat - user_lat

x = defib_lon - user_lon
y = defib_lat - user_lat

d = Math::hypot(x,y)
#STDERR.puts "Name: #{current_defib[1]}"
#STDERR.puts "defib lon: #{defib_lon}"
#STDERR.puts "defib lat: #{defib_lat}"

#STDERR.puts x

#STDERR.puts prior_distance
#STDERR.puts d
#STDERR.puts name[0,10]



answer = (d < prior_distance) ? name : answer
#STDERR.puts answer
prior_distance = (d < prior_distance) ? d : prior_distance
=begin
if name[0,2] == 'Ci'
    STDERR.puts "Name: #{current_defib[1]}"
STDERR.puts "defib lon: #{defib_lon}"
STDERR.puts "defib lat: #{defib_lat}"
STDERR.puts prior_distance
STDERR.puts d
STDERR.puts '--------------'
end
=end


}

puts answer
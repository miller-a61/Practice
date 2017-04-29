
n = gets.to_i # Number of elements which make up the association table.
q = gets.to_i # Number Q of file names to be analyzed.

#STDERR.puts n
#STDERR.puts q

files = Array.new
i = 0
ext = ""

file_ext = Hash.new
file_ext.default = 'UNKNOWN'

n.times do
    # ext: file extension
    # mt: MIME type.
    ext, mt = gets.split(" ")
    
    ext = ext[0..9]
    ext = ext.downcase
    
    mt = mt[0..49]
    #mt = mt.downcase
    #STDERR.puts "#{ext}, #{mt}"

    file_ext.store(ext, mt)
     
end

#STDERR.puts '############'
#STDERR.puts file_ext['xxx']

q.times do
    fname = gets.chomp # One file name per line.
    fname = fname.downcase
    files[i] = fname[0..255]
    i += 1
    #STDERR.puts fname

end
    
#STDERR.puts '%%%%%%%%%%%'
    
files.each{|f| #STDERR.puts f

    to_find = ""
    
    if f.index('.') != nil && f[-1] != '.'
        
        g = f.split('.')
        if g.length >= 1
            to_find = g.last[0..9]
        end
        #STDERR.puts to_find
        
        #x = file_ext["#{to_find}"]
        #STDERR.puts x
        #STDERR.puts '--------'
    end
    
    puts file_ext["#{to_find}"]
}

# For each of the Q filenames, display on a line the corresponding MIME type. If there is no corresponding type, then display UNKNOWN.
#puts x
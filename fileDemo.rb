fObj = File.new("input.txt","r+")
if fObj
    #output the first 39 characters of the file.
    a = fObj.sysread(39)
    print a
    fObj.each_byte{ |ch| puts ch}
    #read 39 charecters after that write somthing is start
    fObj.syswrite("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
else 
    puts "enable to open file"
end
fObj.close




puts
puts
#IO.readlines returns the contents of the file line by line.
#return arrat
arr = IO.readlines("input.txt")
puts arr #gives array elements in new line
print arr #gives array
puts
puts

#foreach is associated with a block. 
#foreach does not return an array.
IO.foreach("input.txt"){ |str| puts str }
puts


"abc".each_byte{ |ch| print ch } #give ascii value
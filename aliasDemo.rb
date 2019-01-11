=begin
class Name
    def defName
        puts "Tejal"
    end
    alias_method :cdefName1 , :defName
    def defName
        puts "Vivek"
        cdefName1
    end

end
n = Name.new()
n.defName
=end
=begin
class Demo
    def sum(a,b)
        puts a+b
    end
    alias_method :sum1 , :sum
    def sum(a,b)
        puts a+b
        sum1(3,5)
    end
 
end
d=Demo.new()
d.sum(2,3)
=end
def test
    puts "hoo"
    yield(1,2,3,4,5,6,7,8)
    #yield(1,2,3,4,5,6,7,8)
end
test{ |*j| puts "heyy  #{j}" }
puts "hiiiii"
#abc{ |*j| puts "heyy  #{j}" }
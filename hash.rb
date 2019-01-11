a = {1=>{2=>{3=>{4=>6}}},2=>{3=>6},3=>{4=>5}}

puts a[1]
=begin
def check(a)
    puts "in check function"
    valueis = a.values
    for i in 0...valueis.length
        if valueis[i].kind_of?(Hash)
            puts valueis[i]
            puts " recursion"
            check(valueis[i])
            
        else
            puts  valueis[i]
            puts "in else"
        end
    end
end

check(a)
=end
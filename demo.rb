
a=[1,2,1,2,1,1,1,3,3,3,3]

for i in 0...a.length
    for j in i+1...a.length
        if a[i]==a[j]
           a.delete_at(j)
           a.insert(j,0)
        end
    end
end
a.delete(0)
print a

=begin
(0..0).each do|i|
    puts i
end
=end
#https://richonrails.com/articles/working-with-ruby-arrays

=begin
a.each.with_index(2) do |i,v|
    print v,i
    puts
end
=end
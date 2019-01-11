a = [1,1,1,2,3,4,4,4,4,4]
for i in 0...a.length
    if a[i] == a[i+1]
        a.delete_at(i)
    end
end
puts a

b = *(0..2)
print b
puts
c = *"hello"
print c
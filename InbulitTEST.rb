#MAP
#SELECT
#LAMBDA
#REDUCE
#CLONE

q = [1,2,3,4]
p = q.clone
print p
p.push(12)#only p chnage
print "p:",p
puts
print "q:",q
puts
v = [1,2,3,4]
n = v.collect.to_a
print n
puts
n.push(12)#only n change
print "n:",n.to_a
puts 
print "v:",v
puts
puts

z = [1,2,3,4]
d = z
d.push(7)
print "z: ",z
puts
print "d: ",d




puts 
puts




a = lambda { |c| c+1}
print [1,2,3,4,5].each { |c| puts c+1}
puts
c = [1,2,3,4,5,6].map { |n| n ** 2}
print "Apply array: ",c
puts
#a = (0...5).map { |n| n.even? }
a = (0...5).map(&:even?) 
print "Apply on range: ",a 
puts 
#Map on Hash
h = { "a"=>1 , "b"=>2 , "c"=>3 }
puts h.transform_values {|v| v*2}
puts h.transform_values(&:to_s)
#map on Array in Array
arr = [
    [1,2,3,4],
    [5,6,7,8],
]
z = arr.map{ |row| row.map { |col| col**2} }
print z
puts 

#SELECT
print a=(0..5).select{ |n| n>3}
puts
print a=(0..5).map{ |n| n>3}
puts


var = lambda { |sum,ind| sum+ind}
sum=0
puts (0..5).reduce(&->(sum,x){ sum+x })

(0..5).reduce(0){|sum,ind| sum+ind}

#print (0..5).to_a.shuffle
puts
#print [*(1..5)]
#puts *3...5

sum = -> a, b { a + b }
add_three = sum.curry.(3)
a = [*1..100]
print a.map(&add_three).length 



=begin
lambda:
Lambdas in Ruby are also objects, just like everything else!
anonymous function
The last expression of a lambda is its return value, just like regular functions. 
1st method: variable = -> (arg){ body }
2nd method: variable = lambda { } # your lambda between the braces


Map:
Applying map on an array returns a new array 
where each element is the result of evaluating the block with the element as an argument.
Always return array

Map over a Hash
There’s a new method (since Ruby 2.4) called Hash#transform_values 
that you could use pretty much like you would use an Array.

h = { a: 1, b: 2, c: 3 }
h.transform_values {|v| v * v + 1 }
# => { a: 2, b: 5, c: 10 }

h.transform_values(&:to_s)
# => { a: "1", b: "2", c: "3" }


CURRYING:
It's a way to let you create new functions from existing functions.
In the code below I have a lambda function that adds two numbers. 
Conveniently, it's called add. 
Then I use currying to create a more specialized function called increment. 
It simply adds one to any given number.
add = lambda {|a,b| a+b }
add.call(1,3)=>4
increament = add.curry.call(3)
increament.call(100)=>103

You can curry any proc in Ruby You can curry any proc in Ruby


#SELECT
select does is it returns all the objects for which the block returns a truthy value (i.e. not nil or false).

=end
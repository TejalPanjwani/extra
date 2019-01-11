def blockDemo(&block)
    puts "Hiii you are in method"
    block.call(6)
end
#blockDemo{ puts "x" }

var = Proc.new{ puts "x" }
#blockDemo(&var)

var1 = -> (num){ puts "heyy",num }
#blockDemo(&var1)


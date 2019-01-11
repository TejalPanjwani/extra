module Test
    puts "you are in module"
end


class Demo
    include Test
    puts "you are in class"
    def test
        puts " you are in Demo in Test"
    end
end

class ModuleDemo < Demo
    puts "you are in class ModuleDem"
    def test
        puts " you are in ModuleDemo in Test"
    end
end

m = ModuleDemo.new() 
m.test
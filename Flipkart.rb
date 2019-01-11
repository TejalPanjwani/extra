
#ruby 2.3.1 

class Flipkart
    @@total = 0
    @@count = 0
    @@total_item = []
    @@total_qun = []
    @@total_pri = []
    def initialize()
         puts "  Welcome to flipkart"
         puts "  Enter ypour name:"
         $name = gets
    end
    def bill(item,ans)
                @@count = @@count + 1
                puts " Quantity: "
                qun = gets
                a = qun.to_i
                @@total_qun.push(a)
                @@total = ans * a
                @@total_pri.push(@@total)
    end

        def electronics()
            cat = { "Category"=> "Price","  1. Tv"=>10000,"  2. Tablets"=> 5000,"  3. Moblie" =>2000,"  4. Laptop "=>  45000,"  5. Charger" => 300}
            cat.each do |key,value|
                printf  "%-20s %s" ,key,value
                puts
            end
            pro = ["Tv","Tablets","Moblie","Laptop","Charger"]
            arr = [10000,5000,2000,45000,300]
            puts "  Enter number"
            item = gets
            ans = arr[(item.to_i)-1]
            @@total_item.push(pro[(item.to_i)-1])
            if(item.to_i<=pro.length)
                bill(item,ans)
            else 
                puts "Enter valid input"
            end
            puts "  Do you want to continu into Electronics?(if yes the enter 1 other wise 0)"
            ans = gets
            if(ans.to_i == 1 )
                electronics()
            else 
                    final()
            end
        end

        def  appliance()
            puts "  1. For Home"
            puts "  2. For Kitchen"
            puts "  3. For Electronics"
            puts "  Please enter your choice "
            gender = gets
            case gender.to_i
                when 1
                    home()
                when 2
                    kitchen()
                when 3
                    electronics()
                else
                    puts "  Please enter valide input"
                end
        end

        def home()
            cat = {"Category"=>"Price","  1. Fan"=>1500,"2.Air Cooler"=>8000,"  3. Room Heater"=>2500,"  4. Water Heater"=>3800,"  5. water Purifier"=>8600,"  6. iron"=>599,"  7. Sewing Machine"=>10000}
            cat.each do |key,value|
                printf  "%-20s %s" ,key,value
                puts
            end
            pro = ["Fan","Air Cooler", "Room Heater", "Water Heater", "Water Purifier", "iron", "Sewing Machine"]
            arr = [1500,3300,2500,3800,8600,599,10000]
            puts " Enter number"
            item = gets
            ans = arr[item.to_i-1]
            @@total_item.push(pro[(item.to_i)-1])
            if(item.to_i<=pro.length)
                bill(item,ans)
            else 
                puts "Enter valid input"
            end
            puts " Do you want to continu into Men's wear?(if yes the enter 1 other wise 0)"
            ans = gets
            if(ans.to_i == 1 )
                    home()
            else 
                    final()
            end

        end

        def kitchen()
            cat = {"Category"=>"Price","1. Mixer Geinder"=>1900,"2. Toaster"=>3300,"3. Oven"=>9500,"4. Sandwich Maker"=>1800,"5. Juicer"=>600,"6. Hand Blender"=>599,"7. Rice & Pasta Cooker"=>1000,"8. Coffee Machine"=>4500}
            cat.each do |key,value|
                printf  "%-20s %s" ,key,value
                puts
            end
            pro = ["Mixer Geinder", "Toaster","oven","Sandwich Maker","Juicer","Hand Blender", "Rice & Pasta Cooker","Coffee Machine"]
            arr = [1900,3300,9500,1800,600,599,1000,4500]
            puts " Enter number"
            item = gets
            ans = arr[item.to_i-1]
            @@total_item.push(pro[(item.to_i)-1])
            if(item.to_i<=pro.length)
                bill(item,ans)
            else 
                puts "Enter valid input"
            end
            puts " Do you want to continu into Men's wear?(if yes the enter 1 other wise 0)"
            ans = gets
            if(ans.to_i == 1 )
                    home()
            else 
                    final()
            end
        end
        
        def cloth()
            puts "  1. For Men's"
            puts "  2. For Women's"
            puts "  Please enter your choice "
            gender = gets
            case gender.to_i
                when 1
                    men()
                when 2
                    women()
                else
                    puts "Please enter valide input"
                end
        end
        def men()
            cat = {"Category"=>"Price","1. Shirt"=>500,"2. T-shirt"=>300,"3. Suits"=>4500,"4. Jeans"=>3000,"5. Jackets"=>3600}
            cat.each do |key,value|
                printf  "%-20s %s" ,key,value
                puts
            end
            pro = ["Shirt", "T-shirt","Suits","Jeans"," Jakets"]
            arr=[500,300,4500,3000,3600]
            puts " Enter number"
            item=gets
            ans=arr[item.to_i-1]
            @@total_item.push(pro[(item.to_i)-1])
            if(item.to_i<=pro.length)
                bill(item,ans)
            else 
                puts "Enter valid input"
            end
            puts " Do you want to continu into Men's wear?(if yes the enter 1 other wise 0)"
            ans = gets
            if(ans.to_i == 1 )
                    men()
            else 
                    final()
            end
            
        end

        def women()
            cat = {"Category"=>"Price","1. Tops"=>700,"2. Kurti"=>250,"3. Dress"=>3500,"4. Jeans"=>3000,"5. Dupatta"=>360}
            cat.each do |key,value|
                printf  "%-20s %s" ,key,value
                puts
            end
            pro = ["Tops","Kurti","Dress","Jeans","Dupatta"]
            arr = [700,250,3500,3000,360]
            puts "  Enter number"
            item = gets
            ans = arr[item.to_i-1]
            @@total_item.push(pro[(item.to_i)-1])
            if(item.to_i<=pro.length)
                bill(item,ans)
            else 
                puts "Enter valid input"
            end
            puts "  Do you want to continue into Women's wear?(if yes the enter 1 other wise 0)"
            ans = gets
            if(ans.to_i == 1 )
                    women()
            else 
                    final()
            end
            
        end

        def footwear()
            puts "  1. For men's"
            puts "  2. For women's"
            puts "  Please enter your choice "
            gender = gets
            case gender.to_i
                when 1
                    menfoot()
                when 2
                    womenfoot()
                else
                    puts "  Please enter valide input"
                end
       
        end
        def menfoot()
            cat = {"Category"=>"Price","1. Casual Shoes"=>1700,"2. Formal Shoes"=>650, "3. Sport Shoes"=>500,"4. Socks"=>100}
            cat.each do |key,value|
                printf  "%-20s %s" ,key,value
                puts
            end
            
            pro = ["Casual Shoes","Formal Shoes","Sport Shoes","Socks"]
            arr = [1700,650,500,100]
            puts " Enter number"
            item = gets
            ans = arr[item.to_i-1]
            @@total_item.push(pro[(item.to_i)-1])
            if(item.to_i<=pro.length)
                bill(item,ans)
            else 
                puts "Enter valid input"
            end
            puts "  Do you want to continue into Men's Foot-wear?(if yes the enter 1 other wise 0)"
            ans = gets
            if(ans.to_i == 1 )
                    menfoot()
            else 
                    final()
            end
            
        end
        def womenfoot()
            cat = {"Category"=>"Price","1. Flat"=>1700, "2. Heel"=>2650,"3. Casual Shoes"=>800}
            cat.each do |key,value|
                printf  "%-20s %s" ,key,value
                puts
            end
            
            pro = ["Flat","Heel","Casual Shoes"]
            arr=[1700,2650,800]
            puts "  Enter number"
            item = gets
            ans = arr[item.to_i-1]
            @@total_item.push(pro[(item.to_i)-1])
            if(item.to_i<=pro.length)
                bill(item,ans)
            else 
                puts "Enter valid input"
            end
            puts "  Do you want to continue into Women's Foot-wear?(if yes the enter 1 other wise 0)"
            ans = gets
            if(ans.to_i == 1 )
                    womenfoot()
            else 
                    final()
            end
            
        end

        def toys()
            cat = {"Category"=>"Price","1. Soft Toy"=>400,"2. Toy Vehical"=>2000,"3. Musical Toy"=>3100,"4. Devlopment Toy"=>630}
            cat.each do |key,value|
                printf  "%-20s %s" ,key,value
                puts
            end
            
            pro = ["Soft Toy","Toy Vehical","Musical Toy","Devlopment Toy"]
            arr=[400,2000,3100,630]
            puts "  Enter number"
            item = gets
            ans = arr[item.to_i-1]
            @@total_item.push(pro[(item.to_i)-1])
            if(item.to_i<=pro.length)
                bill(item,ans)
            else 
                puts "Enter valid input"
            end
            puts "  Do you want to continue into Toys?(if yes the enter 1 other wise 0)"
            ans = gets
            if(ans.to_i == 1 )
                    toys()
            else 
                    final()
            end
        end

        def start()
        #begin
            puts "  1. Electronics"
            puts "  2. Appliance"
            puts "  3. Clothing"
            puts "  4. Footwear"
            puts "  5. Toys"
            puts "  6. Exit"
            puts "  Please enter number accordingly products"
            search = gets
            case search.to_i
                when 1
                    electronics()
        
                when 2
                    appliance()

                when 3
                    cloth()

                when 4
                    footwear()
    
                when 5
                    toys()
    
                when 6
                    exit
                else 
                    puts "Invalid"
        end
           #end while( search.to_i == 6)
     end

     def final()
        puts "  Do you want to purches more items?"
        choi = gets
        if(choi.to_i == 1)
            start()
        else
            print "\n\n\n"
            print "  Your name is: ",$name
            puts
            print  " Items","\t\t\t","Quentity","\t","price"
            puts
            ans = 0
            for i in 0...@@total_pri.length
                ans = ans + @@total_pri[i]
            end
            for i in 0...@@total_item.length
                #print " ",@@total_item[i],"\t\t\t", @@total_qun[j],"\t\t",@@total_pri[k]
                printf " %-25s %-12s %s",@@total_item[i],@@total_qun[i],@@total_pri[i]
                puts
            end
        
            puts "--------------------------------------------------------------"
            print " ","Total Price:","\t\t\t\t",ans,"\n"
            puts "--------------------------------------------------------------"
        end   
    end
   
end

f=Flipkart.new()
f.start()
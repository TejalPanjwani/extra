class Abc
    
    @@ele={"1. Tv"=>10000,"2. Tablets"=> 5000,"3. Moblie" =>2000,"4. Laptop "=>  45000,"5. Charger" => 300}
    @@apl={"1. Home"=>{"1. Fan"=>1500,"2. Air Cooler"=>8000,"3. Room Heater"=>2500,"4. Water Heater"=>3800,"  5. water Purifier"=>8600,"  6. iron"=>599,"  7. Sewing Machine"=>10000},
           "2. Kitchen"=>{"1. Mixer Geinder"=>1900,"2. Toaster"=>3300,"3. Oven"=>9500,"4. Sandwich Maker"=>1800,"5. Juicer"=>600,"6. Hand Blender"=>599,"7. Rice & Pasta Cooker"=>1000,"8. Coffee Machine"=>4500},
           "3. Electronics"=> @@ele}
    @@cloth={"1. For Men's"=>{"1. Shirt"=>500,"2. T-shirt"=>300,"3. Suits"=>4500,"4. Jeans"=>3000,"5. Jackets"=>3600},
             "2. For Women's"=>{"1. Tops"=>700,"2. Kurti"=>250,"3. Dress"=>3500,"4. Jeans"=>3000,"5. Dupatta"=>360}}
    @@footw={"1. For Men's"=>{"1. Casual Shoes"=>1700,"2. Formal Shoes"=>650, "3. Sport Shoes"=>500,"4. Socks"=>100},
             "2. For Women's"=>{"1. Flat"=>1700, "2. Heel"=>2650,"3. Casual Shoes"=>800}}
    @@toy={"1. Soft Toy"=>400,"2. Toy Vehical"=>2000,"3. Musical Toy"=>3100,"4. Devlopment Toy"=>630}
    @@cat=[@@ele,@@apl,@@cloth,@@footw,@@toy]
    @@finalArray=[]


    def start()
        show=["1. Electronics","2. Appliance","3. Clothing","4. Footwear","5. Toys","6. Exit"]
        for i in 0...show.length
            puts show[i]
        end
        puts " Enter Number: "
        num = gets.to_i 
        if num == 6
            exit
        else
            ans = @@cat[num-1]
            display(ans)
        end
    end

    def display(ans)
        arr = ans.values
        if arr[0].kind_of?(Hash)
            checkforhash(ans)
        else
            print(ans)
        end
    end
             
    def checkforhash(ans)
        keysis = ans.keys
        valueis = ans.values
        for i in 0...keysis.length
            puts keysis[i]
        end
        puts " Enter number: "
        num = gets.to_i
        hashis = valueis[num-1]
        hashis.each do |key,value|
            printf  "%-20s %s" ,key,value
            puts
        end
        puts "Enter number"
        num1 = gets.to_i
        finalkey = hashis.keys[num1-1]
        finalvalue = hashis.values[num1-1]
        puts " Quantity: "
        finalqun = gets.to_i
        puches(finalkey,finalvalue,finalqun)
        puts " Do you want to continue in this section: "
        ans1 = gets
        if ans1[0].downcase == "y"
            checkforhash(ans)
        else
            bill()
        end 
    end

    def print(ans)
        ans.each do |key,value|
            printf  "%-20s %s" ,key,value
            puts
        end
        puts "Enter number"
        num1 = gets.to_i
        finalkey = ans.keys[num1-1]
        finalvalue = ans.values[num1-1]
        puts " Quantity: "
        finalqun = gets.to_i
        puches(finalkey,finalvalue,finalqun)
        puts " Do you want to continue in this section: "
        ans1 = gets
        if ans1[0].downcase == "y"
            print(ans)
        else
            bill()
        end
    
    end 

    def puches(finalkey,finalvalue,finalqun)
        #@@count = @@count + 1
        total = finalvalue * finalqun
        finalHash = {"Product"=>finalkey,"Quantity"=>finalqun,"Price"=>total}
        @@finalArray.push(finalHash)

    end
    def bill()
        puts " Do you want to continue: "
        ans1 = gets
        if ans1[0].downcase == "y"
            start()
        else
    
            total = 0
            puts
            puts "------------------------------------------------"
            printf  "%-40s %-20s %s" ,"Poducts","Quantity","Price"
            puts
            for i in 0...@@finalArray.length
                total = total + @@finalArray[i]["Price"]
            end
            #puts @@finalArray

            #for i in 0...@@finalArray.length
                #i=i+1
                #for j in i...@@finalArray.length
                   # if @@finalArray[i]["Product"] == @finalArray[j]["Product"]
                    #    @@finalArray[i]["Quantity"] = @@finalArray[i]["Quantity"]+@finalArray[j]["Quantity"]
                     #   @@finalArray[i]["Price"] = @@finalArray[i]["Price"]+@finalArray[j]["Price"]
                   # end
                #end
           # end

            for i in 0...@@finalArray.length
                printf  "%-40s %-20s %s" ,@@finalArray[i]["Product"],@@finalArray[i]["Quantity"],@@finalArray[i]["Price"]
                puts
            end
            
                puts "-------------------------------------------------"
                puts "Total is: ",total
        end

    end
end

a=Abc.new()
a.start

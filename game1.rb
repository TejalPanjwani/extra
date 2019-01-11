class Game
    puts "Enter number of players: "
    players = gets.to_i
    puts "Enter difference: "
    diff = gets.to_i
    puts
    arr = (1..players).to_a
    finalArray = []
    point = 0
    goingToDelete=[]
    point = -1
    while arr.length != 1 do
        point = point + 3
            if point <= arr.length
                goingToDelete.push(point)
                finalArray.push(arr[point])
            else 
                goingToDelete.reverse.each do |index|
                    puts arr[index]
                    arr.delete_at(index)
                end
                goingToDelete=[]
                    if arr.length.even?
                        point = (point%diff)-2
                    else
                        point = (point%diff)-1
                    end
                # else
                #     if arr.length.even?
                #         point = (point%diff)-2
                #     else
                #         point = (point%diff)-1
                #     end
            
                # if point==0
                #     point = point+2
                #     print "point:",point
                # end
                goingToDelete.push(point)
                finalArray.push(arr[point])
            end

    end
       
    print arr
end 
g = Game.new()





    #         if Start < arr.length
    #         indexOfArray.push(Start)
    #         indexOfArray.each do |index|
    #             finalArray.push(arr[index])
    #         end

    #     else 
    #         Start = arr.length-1 % 2
    #         indexOfArray.push(Start)
    #         indexOfArray.each do |index|
    #             finalArray.push(arr[index])
    #         end

    #     arr.delete[Start-1]
    # end


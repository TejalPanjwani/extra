
    puts "Enter number of players: "
    players = gets.to_i
    puts "Enter difference: "
    diff = gets.to_i
    arrayOfPlayers = (1..players).to_a
    finalArray = []
    puts "Enter number where to start: "
    start = gets.to_i
    possition = start - 2
    while arrayOfPlayers.length != 1 do
        possition = (possition + diff)
        if possition >= arrayOfPlayers.length
            possition = possition%arrayOfPlayers.length
            finalArray.push(arrayOfPlayers[possition])
            arrayOfPlayers.delete_at(possition)
            possition -= 1
        else
            finalArray.push(arrayOfPlayers[possition])
            arrayOfPlayers.delete_at(possition)
            possition -= 1
        end
    end
    print arrayOfPlayers
    puts
    print finalArray

     


















=begin

    goingTODelete = []
        print arrayOfPlayers
    #possition = arrayOfPlayers..find_index(start) -1  
    $possition = start -1
    # if $possition ==0
    #     $possition = $possition + 2
    # else
    #     $possition = $possition + 3
    # end
    while arrayOfPlayers.length != 1 do 
        if $possition ==0
            $possition = $possition + 2
        else
            $possition = $possition + 3
        
    
        if $possition >= arrayOfPlayers.length
            goingTODelete.reverse.each do |index|
                puts "index ",index
                arrayOfPlayers.delete_at(index)
            end
            goingTODelete = []
            print arrayOfPlayers
            if arrayOfPlayers.length.even?
                if $possition%3==0
                    $possition = $possition%3-1
                puts "Position: ",$possition
                else
                    $possition = $possition%3-2
                end
            else
            
                if $possition%3==0
                    $possition = $possition%3+1
                    puts "Position: ",$possition
                else
                    $possition = $possition%3-1
                end
        
            end
        else
            goingTODelete.push($possition)
            $possition = $possition + 3
            
            
        end
    end
    end
    print arrayOfPlayers

=end


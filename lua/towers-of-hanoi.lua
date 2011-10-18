-- Towers of Hanoi: Recursive
function solvefor(n)
    move(n, 'left', 'right', 'center')
end

-- Moves the disk to the next possible tower. x,y,z stand for the three towers 
function move(disk, x, y, z)
    if disk > 1  then    
        move(disk - 1, x, z, y)
        print('Move top disk from ' .. x .. ' to ' .. z)
        move(disk - 1, y, x, z)        
    else
        print('Move top disk from ' .. x .. ' to ' .. z)
    end
end


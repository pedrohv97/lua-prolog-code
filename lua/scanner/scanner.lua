--[[
    Scans in a file.

    Contains functions to allow reading from the file.
--]]

Scanner =  {}

function Scanner.new()
    local self = {}
    local chars = {}
    local index = 1;   
    
    --[[ 
        Opens a (text) file and builds a table of all the 
        characters contained in the file.
        Does not store any whitespaces.
    --]]
    function self:loadfile(filename)
        local file = io.open(filename)
        for line in file:lines() do
            for char in line:gmatch"." do
                if not char:match"%s" then
                    table.insert(chars,char)
                end
             end
        end
    end
 
    --[[
        Returns the next character in the table of characters.
        Must remove spaces.
    --]]
    function self:nextchar()
        local char = chars[index]
        index = index + 1
        return char        
    end
        
    --[[
        Prints all the characters in the table
    --]]
    function self:printall()
        for k,v in ipairs(chars) do 
            print(k .. " " .. v)
        end
    end

    return self
end
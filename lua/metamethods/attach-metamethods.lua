-- Taken from lua-users wiki
-- Reference for lua metamethods: see also metatables.lua

--[[ 

    We can attach metamethods to the 'class' returned in metatables.lua with the following:

--]]

x = { value = 3 }


-- metatable containing event callbacks
mt = { __add =  function(a,b) 
                    return setmetatable({ value = a.value + b.value }, mt )
                end }  
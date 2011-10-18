-- Taken from lua-users wiki
-- A note on classes
-- String class example

mt = {} -- metatable

function String(s)
    return setmetatable({ value = s or ''}, mt)
end

function mt.__add(a,b)
    return String(a.value .. b.value)
end

function mt.__mul(a,b)
    return String(string.rep(a.value,b))
end



--[[
    Notes on the metamethod __index:
    
    When we use the "+" operator, lua automatically associates this with the __add event.
    If the key we are looking for is not a built in one, we can use __index to catch 
    lookups. This event is called whenever we are looking for a key associated with an object
    (and it is not one of the built in ones). 
    
    For example, what if we want to get the length of a string in the above String class example?

--]]

function mt.__index(t,key)
    if key == 'length' then 
        return string.len(t.value)
    end
end



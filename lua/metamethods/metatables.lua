-- Taken from lua-users wiki
-- Reference for lua metamethods

--[[ In the above example we create a table called x containing a value, 3.
     We create a metatable, containing the event overloads we would like to 
     attach to the table, in mt. We are overloading the "add" event here; 
     notice how the function receives two arguments because "add" is a binary operation. 
     We attach the metatable mt to the table x and when we apply the addition operator 
     to x (in a = x+x) we can see that a contains the results of the __add metamethod.

     Notice however that a is not an instance of our "class", it is just a plain table 
     with no metamethod associated with it.

--]]


x = { value = 3 }


-- metatable containing event callbacks
mt = { __add =   function(a,b) 
                            return { value = a.value + b.value } 
                        end }                        
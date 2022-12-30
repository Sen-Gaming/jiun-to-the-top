require("vec2")

Entity = {
  components = {}
}
Entity.__index = Entity

--[[
  Allow construction of a Entity with syntax `local e = Entity()`
  Params: Variable number of Components
--]]
setmetatable(Entity, {
  __call = function(_, ...)
    for i, v in ipairs({...}) do
      print(v)
    end
    return setmetatable({
      
    }, Entity)
  end
})


local e = Entity(1, 2, "house")
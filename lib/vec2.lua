Vec2 = {}
Vec2.__index = Vec2

--[[
  Allow construction of a Vec2 using something like `local v = Vec2(123, 456)`
  Params:
  - x: number
  - y: number
--]]
setmetatable(Vec2, {
  __call = function(_, x, y)
    return setmetatable({
      x = x or 0,
      y = y or 0
    }, Vec2)
  end
})

--[[
  Allow addition of two Vec2 objects with `+` operator
  Params:
  - other: Vec2
--]]
function Vec2:__add(other)
  return Vec2(self.x + other.x, self.y + other.y)
end

--[[
  Allow subtraction of two Vec2 objects with `-` operator
  Params:
  - other: Vec2
--]]
function Vec2:__sub(other)
  return Vec2(self.x - other.x, self.y - other.y)
end

--[[
  Allow multiplication of a Vec2 and number with `*` operator
  Params:
  - other: number
  Usage:
  ```
  local v = Vec2(1, 2) * 2
  ```
--]]
function Vec2:__mul(other)
  return Vec2(self.x * other, self.y * other)
end

--[[
  Allow multiplication of a Vec2 and number with `/` operator
  Params:
  - other: number
  Usage:
  ```
  local v = Vec2(1, 2) / 2
  ```
--]]
function Vec2:__div(other)
  return Vec2(self.x / other, self.y / other)
end

--[[
  Get the length or magnitude of the Vec2
  Usage:
  ```
  local v = Vec2(1, 2)
  local len = v:len()
  ```
--]]
function Vec2:len()
  return math.sqrt(self.x*self.x + self.y*self.y)
end

--[[
  Get the squared length or magnitude of the Vec2
  Prefer this method over Vec2:len() for Vec2 size comparisons
  Usage:
  ```
  local v = Vec2(1, 2)
  local len = v:len_sq()
  ```
--]]
function Vec2:len_sq()
  return self.x*self.x + self.y*self.y
end

--[[
  Get a normalized Vec2 from the current Vec2
  Usage:
  ```
  local v = Vec2(1, 2)
  local normalized = v:normed()
  ```
--]]
function Vec2:normed()
  local len = self:len()
  if len == 0 then
    return self
  end
  return self / self:len()
end

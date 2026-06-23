---@param seconds number
local function sleep(seconds)
    assert(type(seconds) == "number", "name must be a number")

    local start = os.clock()
    while os.clock() - start <= seconds do end
end

local hai = "Haiii"

while true do
    sleep(2)
    print(hai)
end
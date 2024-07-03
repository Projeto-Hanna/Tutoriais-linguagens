function Set (list)
  local set = {}
  local value = {}
  for _, l in ipairs(list)
  do
    if set[l] ~= true then
      set[l] = true
      table.insert(value, l)
    end
  end

  return value
end

local function list_set(list)
  for _, l in ipairs(list)
  do
    print(l)
  end
end

local linked = Set({1, 2, 3, 3, 3, 3, 5, 5, 6})

list_set(linked)

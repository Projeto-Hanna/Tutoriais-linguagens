Linked_list = nil

local function add_to_list(value)
  local new_list_node = { value = value, next = nil }

  if Linked_list == nil then
    Linked_list = new_list_node
    return true
  end

  local actual_node = Linked_list
  while (actual_node.next ~= nil)
  do
    actual_node = actual_node.next
  end

  actual_node.next = new_list_node
  return true
end

local function list_nodes()
  local actual_node = Linked_list

  print('#Comecando a printar lista#')
  while (actual_node ~= nil)
  do
    print(actual_node.value)
    actual_node = actual_node.next
  end
  print('#Fim do print da lista#')
end

local function remove_node(value)
  if (Linked_list ~= nil and Linked_list.value == value) then
    Linked_list = Linked_list.next
    return true
  end

  local past_node = Linked_list
  local actual_node = Linked_list.next
  while actual_node ~= nil
  do
    if actual_node.value == value then
      past_node.next = actual_node.next
      return true
    else
      actual_node = actual_node.next
    end
  end

  return false
end

-- List empty linked list
print(list_nodes())

-- Add some nodes
add_to_list(1)
add_to_list(2)
add_to_list(3)
print(list_nodes())

-- Remove some nodes
remove_node(1)
remove_node(2)
print(list_nodes())
--A stack implementation
--Stack table is the table contaning stack functions, s is the stack table
stack = {}

function stack:create()
  s = {}
  return stack --This is done so that the user can name their stack, f.ex: jojo = stack:create() and then he can perform function like jojo:push(123)
end

function stack:push(obj)
  table.insert(s, 1, obj)
end

function stack:pop()
  local obj = s[1]
  table.remove(s, 1)
  return obj
end

function stack:peek()
  print(s[1])
  return s[1]
end

function stack:size()
  print(#s)
end

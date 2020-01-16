# Your Code Here
def map(source)
  return_array = []
  for i in source do
    return_array.push(yield(i))
  end
  return_array
end

def reduce(source_array, starting_value = nil)
 if starting_value
   sum = starting_value
   i = 0
 else
   sum = array[0]
   i = 1
  end
  
  while i < array.length do
    sum = yield(sum, array[i])
    i+=1
  end
  sum
end
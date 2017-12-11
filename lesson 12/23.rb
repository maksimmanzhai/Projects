def positive_to_min(arr)
  min = arr.min
  arr.map do |n|
    n > 0 ? min : n
  end
end
 
arr = (-10..10).to_a.shuffle
puts arr
p arr
p positive_to_min(arr)
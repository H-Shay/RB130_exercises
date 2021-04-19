def missing(arr)
  return [] if arr.size == 1
  sorted = arr.sort
  compare = []

  start = sorted[0]
  stop = sorted[-1]
  length = stop-start
  
  length.times do |n|
    compare << n + start 
  end
  (compare - arr).uniq
end  


p missing([-3, -2, 1, 5]) #== [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
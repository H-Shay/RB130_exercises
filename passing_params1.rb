birds = ['crow', 'finch', 'hawk', 'eagle']

def assign_birds(arr)
  yield(arr)
end

assign_birds(birds) do |_,_, *raptors|
  p raptors
end
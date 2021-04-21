items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do |*items, item|
#   puts(items.join(','))
#   puts item 
# end

gather(items) do | item, *items, item3 |
  puts item
  puts items.join(',')
  puts item3
end

gather(items) do | item,*items |
  puts item
  puts items.join(',')
end

gather(items) do | item, item2, item3, item4 |
  puts "#{item}, #{item2}, #{item3}, and #{item4}"
end

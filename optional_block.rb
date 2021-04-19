def compute
  block_given? ? yield : "Does not compute."  
end

#Modify the compute method so it takes a single argument and yields that argument to the block. 
#Provide at least 3 examples of calling this new version of compute, including a no-block call.
def compute2(arg)
  block_given? ? yield(arg) : "Does not compute."
end

p compute2("hello") { |arg| arg + " it's here" } 
p compute2('hello') { |arg| 'a' + 'b ' + arg}
p compute2(0) == 'Does not compute.'

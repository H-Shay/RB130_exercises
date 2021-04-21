assert_equal 'xyz', value.downcase 

assert_equal nil, value

assert_equal true, list.empty?
assert_equal true, list.include?('xyz')

assert_raises NoExperienceError do 
  employee.hire
end

assert_instance_of Numeric, value 

assert_kind_of Numeric, value
assert_same list, list.process 
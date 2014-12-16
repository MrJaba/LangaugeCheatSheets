# [Ruby] Cheat Sheet
# This is a cheat sheet template for Ruby to help
# you get up and running with Ruby quickly.

# Syntax 

### 1. define variables

variable_name = 1
another_variable = 2

### 2. declare string

string = "this is a string"

### 3. declare array

literal_array = [1,2,3,4]

### 4. declare map

literal_map = {symbol_a: 1, symbol_b: 2}
alternative = {"a" => 1, "b" => 2}

### 5. declare other collections

### 6. undefined value

undefined_thing = nil
undefined_thing.nil?
# returns => true

### 7. control flow

if undefined_thing.nil?
  puts "true"
else
  puts "false"
end

### 8. define functions
def this_is_a_function
  # implicit return
  1 + 1
end

#* parameters
def this_is_a_function_with_parameters(param_a, param_b)
  param_a + param_b
end

#* return values
def explicit_return
  return "hello"
end

### 9. Maps
#* construct
symbol_map = {key: "value"}

#* access element
symbol_map[:key] 
# returns => "value"

#* remove element
symbol_map.delete(:key)

#* iterate over
symbol_map.each do |key, value| 
  puts "#{key}, #{value}"
end

### 10. Arrays
#* construct
array = [1,2,3]

#* access element
array[0]
# returns => 1

#* remove element
array.delete_at(1)
# returns => 2
# modifies array in place

#* iterate over
array.each do |element| 
  puts element
end

#* find element
array.index(3)
# returns => 2 (index of the element 3)

### 11. Collection Methods

array.first
# retrieve the first element

array.last
# retrieve the last element

array.include?(3)
# is an item in the collection

array.empty?
# is the collection empty

### 12. Looping construct

for i in 0..5
  puts i
end

### 13. User defined types

class NewThing
  def initialize
    @instance_variable = 1
  end
end

a = NewThing.new

# Useful Code

#* read a file
File.open("./ruby.rb", "r") do |f|
  f.each_line do |line|
    puts line
  end
  end

# or

IO.foreach("./ruby.rb") { |line| puts line }

#* write a file

open('tmp.txt', 'w') do |f|
  f.puts "Hello, world."
end

#* delete a file
File.delete("tmp.txt") 

#* http get

require 'net/http'
require 'uri'
uri = URI.parse("http://google.com/")
response = Net::HTTP.get_response(uri)

puts response.body

# Idioms

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0 then return 0
  else  arr.inject {|sum, number| sum + number}
  end    
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0 then return 0
  elsif arr.length == 1 then return arr[0]
  else arr.sort[-1]+arr.sort[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  (0..arr.length-1).each do |i|
    (i+1..arr.length-1).each do |j|
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonant = "bcdfghjklmnpqrstvxz"
  consonant.each_char{ |letter| 
    if s[0] == letter or s[0] == letter.upcase then return true 
    end}
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty? then return false
  end
    s.each_char{ |char| return false if char != "0" and char != "1"}
    if s.to_i(2) % 4 == 0 then return true
    end
    return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price

def initialize(isbn,price)
  @isbn=isbn
  @price=price
  
  if @isbn.empty? || @price <=0 then raise ArgumentError
  end
end
  
def price_as_string
  return "$#{'%.2f' % @price}"
end
end

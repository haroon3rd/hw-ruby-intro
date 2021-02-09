# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length !=0 then arr.inject {|sum, number| sum + number}
  else 0
  end    
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0 then 0
  elsif arr.length == 1 then arr[0]
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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

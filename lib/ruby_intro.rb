# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  arr.each{|num| sum += num}
  sum
end

def max_2_sum(arr)
  sum = 0
  
  if arr.length > 1
    max1 = arr.at(0)
    max2 = arr.at(1)
    
    arr2 = arr.drop(2)
    
    arr2.each{|val|
      if (val > max1) && (max2 > max1)
        max1 = val
      elsif (val > max2) && (max1 > max2)
        max2 = val
      end
    }
    sum = max1 + max2
  elsif arr.length == 1
    sum = arr.at(0)
  else
    sum
  end
  
end

def sum_to_n?(arr, n)
  values = Hash.new
  ans = false
  
  arr.each{|val|
    nComp = n - val
    
    if(values.has_key?(nComp))
      ans = true
    end
    
    values[val] = 1
  }
  ans
end

# Part 2

def hello(name)
  str = "Hello, "
  str.concat(name)
  str
end

def starts_with_consonant?(s)
  ans = /\A[a-zA-Z&&[^aeiouAEIOU]]/.match?(s)
  ans
end

def binary_multiple_of_4?(s)
  ans = false
  if /^[01]+$/.match?(s)
    digit = s.to_i(2)
    if digit % 4 == 0
      ans = true
    end
  end
  ans
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

puts starts_with_consonant?("v")
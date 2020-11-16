def getName
  puts "What is your name?"
  name = gets.chop
  return name
end

def reverseIt
  str = "a man, a plan, a canal, frenemies!"
  puts str.reverse
end

def swapEm
  a = 10
  b = 30

  tmp = b
  b = a
  a = tmp
  
  puts "a is now #{a} and b is now #{b}"
end

# cool method found here: https://stackoverflow.com/questions/7050869/ruby-multiply-all-elements-of-an-array
def multiplyArray (a)
  if (a.size == 0)
    return 1
  end

  total = 1

  return a.reject(&:zero?).inject(:*) # rejecting zero prevents the product from becoming zero
end

def searchArray (a, v)
  return a.include?(v)
end

# found a method here: https://stackoverflow.com/questions/12178642/fibonacci-sequence-in-ruby-recursion
def nthFibonacciNumber ()
  f = [1, 1]
  puts "Which fibonacci number do you want?"
  n = gets.chomp

  # error checking baked in
  if n.to_i.to_s != n
    puts "That is not an integer"
  else
    while f.size < n.to_i
      length = f.length
      nextFib = f[length - 2] + f[length - 1]
      f.push(nextFib)
    end
  puts "#{f[-1]} is the fibonacci number at position #{n}"
  end
end

# found a regex to ignore whitespace: https://stackoverflow.com/questions/1634750/ruby-function-to-remove-all-white-spaces
def isPalindrome (s)
  return s.gsub(/\s+/, "") == s.gsub(/\s+/, "").reverse
end

# nice succinct code found here: https://stackoverflow.com/questions/4351390/how-do-i-check-an-array-for-duplicates
def hasDupes(a)
  return a.uniq.length == a.length
end

# function calls (uncomment them to test functions)
# puts getName
# reverseIt
# swapEm
# puts multiplyArray([0, 1, 2, 3, 4, 5])
# puts searchArray([1, 2, 3], 2)
# nthFibonacciNumber
# puts isPalindrome("a man a plan a canal panama")
# puts hasDupes([1, 2, 3, 4, 5])
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{ |a| sum+=a }
end

def max_2_sum arr
  arr.sort.reverse.take(2).sum
end

def sum_to_n? arr, n
  c = 0
  li = arr.length -1

  if arr.size < 2
    return false
  end

  arr_copy = arr.sort
  
  loop do		
    break if c >= li
    
    if arr_copy[c] + arr_copy[li] == n
       return true
    elseif arr_copy[l] + arr_copy[li] < n
       c +=1
    else
      r -= 1
    end
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0 return false end
  "bcdfghjklmnpqrstvwxyz".include? s[0].downcase
end

def binary_multiple_of_4? s
  if s != "0" && (s.length < 3 || nil == (/^[01]+$/ =~ s) || s.reverse[0,2] != "00")
    return false
  else
    return true
  end
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def isbn
    @ISBN
  end
  
  def isbn=(new_ISBN)
    if new_ISBN.length == 0
      raise ArgumentError, 'ISBN is not valid'
    end
    
    @ISBN = new_ISBN
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError, 'Price must be greater than 0'
    end  
    @price = new_price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end

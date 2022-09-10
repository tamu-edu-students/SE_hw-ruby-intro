# frozen_string_literal: true

# Part 1

def sum(arr)
  if arr.length == 0
    0
  else
    arr.sum
  end
end

def max_2_sum(arr)
  if arr.length == 0
    0
  else
    a,b = arr.max(2)
    if b.nil?
      a
    else
      a+b
    end
  end
end

def sum_to_n?(arr, number)
  arr.sort!
  l= 0
  r = arr.length() - 1
  while (l < r)
    if arr[l] + arr[r] == number
      return true
    elsif (arr[l] + arr[r]) < number
      l= l + 1
    else
      r = r - 1
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  !/^[^aeiou\W]/i.match(string).nil?
end

def binary_multiple_of_4?(string)
  if /\b[01]+\b/i.match(string).nil?
     false
  else
    string.to_i(2)%4 == 0
  end
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if (isbn.empty? || price <= 0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{"%.2f" % @price}"
  end
end

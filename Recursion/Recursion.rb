
require "byebug"
def range(start, last)
  return [] if last <= start #base case

  [start] + range(start + 1, last)

end

# p range(1,5)
# p range(2,5)
# p range(5,2)
# p range(5,5)

def it_range(start, last)
new_array = []
  (start...last).each do |num|
      new_array << num
  end
new_array
end

# p it_range(1,5)
# p it_range(2,5)
# p it_range(5,2)
# p it_range(5,5)

def exp(b, n)
  return 1 if n == 0

  b * exp(b, n-1)

end

def expo(b, n)
  return 1 if n == 0
  return b if n == 1

  if n % 2 == 0
    exp(b, n/2) * exp(b, n/2)
    
  end
  if n % 2 != 0
    b * exp(b, (n-1)/2) * exp(b, (n-1)/2)
  
  end
end

p expo(3, 0)
p expo(2, 5)
p expo(3, 9)
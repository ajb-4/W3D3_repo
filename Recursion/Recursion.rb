
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
    even_exp = expo(b, n/2)
    even_exp * even_exp
  else 
    odd_exp = expo(b, (n-1)/2)
    b * odd_exp * odd_exp
  end
end


class Array
    def deepdup
      narr = []
        self.each do |ele1|
          if (ele1).is_a?(Array) 
            ele1.deepdup
          else
            narr << ele1
          end
        end
    end
end


p tester = [1,2, [4, 3],[5]]
p testdup = tester.deepdup
 testdup[2] << 3
p testdup
p tester

 
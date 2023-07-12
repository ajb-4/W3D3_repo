
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

p it_range(1,5)
p it_range(2,5)
p it_range(5,2)
p it_range(5,5)


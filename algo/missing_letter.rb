# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)

  #turns range into an array of the characters value
  string_values = []
  range.split("").each {|letter| string_values << letter.ord}

  missing_letters = ""
  num = string_values.min

  until num == string_values.max
    if string_values.include?(num)
      num += 1
    else
      missing_letters += num.chr
      num += 1
    end
  end

  return nil if missing_letters.length == 0
  missing_letters

end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

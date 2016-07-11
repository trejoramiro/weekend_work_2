# Complete the method called palindrome? which should accept a string as a parameter and return a boolean indicated whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

def palindrome?(string)

  starting_index = 0
  ending_index = string.length - 1

  is_palindrome = true

  if (string.length == 1 )

    is_palindrome = true

  elsif (string.length.even?)
    while (starting_index < ending_index)
      if (string[starting_index] == string[ending_index])
        starting_index = starting_index + 1
        ending_index = ending_index - 1
      else
        is_palindrome = false
        break
      end
    end

  else
    while (starting_index <= ending_index)
      if (string[starting_index] == string[ending_index])
        starting_index = starting_index + 1
        ending_index = ending_index - 1
      else
        is_palindrome = false
        break
      end
    end
  end

  return is_palindrome

end

# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end

def is_anagram(string_one, string_two)
      string_one = string_one.downcase
      string_two = string_two.downcase
      check_variable = ""
      
      (0..(string_one.length-1)).to_a.each do |i|
        check_variable = string_one[i]
        (0..(string_two.length-1)).each do |j|
          if(check_variable == string_two[j])
            string_one[i] = "*"
            string_two[j] = "*"
            break;
          end
        end
      end
      # puts(string_one)
      # puts(string_two)

      (0..(string_one.length-1)).to_a.each do |i|
        return false if(string_one[i] != "*")        
      end

      (0..(string_two.length-1)).to_a.each do |i|
        return false if(string_two[i] != "*")        
      end
      return true
    end

puts is_anagram("aaa", "bbc")
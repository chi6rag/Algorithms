def is_num_palindrone(number)
  number_temp=0
  reverse=0
  while(number!=0)
    number_temp = number%10
    number=number/10
    reverse = number_temp + reverse*10
  end
  
  number == reverse
    return true
  else
    return false
  end
end
number = 98765421
puts is_num_palindrone(number)
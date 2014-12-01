a = [1,3]
b = [2,4]

def merge(a, b)
  i=0
  j=0
  sorted_array = []
  a_length = a.length
  b_length = b.length
  while(sorted_array.length <= (a.length + b.length))
    if( (a[i] < b[j]) && !(a[i].nil?) && !(a[j].nil?) )
      sorted_array.push(a[i])
      i+=1
    elsif( (a[i] > b[j]) && !(a[i].nil?) && !(a[j].nil?) )
      sorted_array.push(b[j])
      j+=1
    elsif( (a[i] == b[j]) && !(a[i].nil?) && !(a[j].nil?) )
      sorted_array.push(a[i])
      sorted_array.push(b[j])
      i+=1
      j+=1
    end
    break if i==a.length
    break if j==b.length
  end
  b[j..(b_length-1)].each do |element|
    sorted_array.push(element)
  end
  return sorted_array
end

puts merge(a,b)
def bubble_sort(a)
  i=0
  while(i <= a.length-1 ) do
    j = 0
    element_i = a[i]
    while( j<i )
      if( a[i] < a[j] )
        # Swapping positions
        temp = a[i]
        a[i] = a[j]
        a[j] = temp
      end
      j += 1
    end
    i += 1
  end
  return a
end

a = [27,89,1,56,3]
print bubble_sort(a)

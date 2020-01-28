# Lab 1
# Part I
def sum arr
  sum_var = 0
  arr.each do |x|
    sum_var += x
  end
  return sum_var
end

# Part II
def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  largest = arr.max
  arr.delete_at(arr.index(arr.max))
  secondlargest = arr.max
  arr.delete_at(arr.index(arr.max))
  return largest + secondlargest
end

# Part III
def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  arr.each do |x|
    arr.each do |y|
      if (x+y == n) && x != y
        return true
      end
    end
  end
  return false
end
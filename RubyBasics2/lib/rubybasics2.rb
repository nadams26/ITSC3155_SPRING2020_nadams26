# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, "+name
end

# Part II
def starts_with_consonant? s
  if s.match(/^[b-ef-hj-np-tv-zB-EF-HJ-NP-TV-Z]+/)
    return true
  else
    return false
  end
end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
end

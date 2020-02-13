module FunWithStrings
  def palindrome?
    if(self.reverse.downcase.gsub(/[^a-z]/, "") == self.downcase.gsub(/[^a-z]/, ""))
      return true;
    end
    return false;
  end
  def count_words
    hash = Hash.new;
    (self.downcase.gsub(/[^a-z ]/, "").split(" ")).each do |x|
      if !hash.key?(x) and x != nil
        hash[x] = 1
      elsif hash.key?(x) and x != nil
        hash[x] = hash[x]+1
      end
    end
    return hash
  end
  def anagram_groups
    words = []
    anagrams = []
    (self.downcase.gsub(/[^a-z ]/, "").split(" ")).each do |x|
      words << x
    end
    contains = false;
    words.each do |x|
      anagrams.each do |y|
        y.each do |z|
          if z.chars.sort.join == x.chars.sort.join
            contains = true
          end
        end
        if(contains == true)
          y << x
        end
        contains = false
      end
      if contains == false
        anagrams << [x]
      end
      contains = false
    end 
    return anagrams
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

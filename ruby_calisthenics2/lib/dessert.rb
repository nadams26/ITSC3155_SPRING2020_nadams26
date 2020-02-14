class Dessert
  # add code for setters and getters
  @name = ""
  @calories = 0
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    if calories < 200
      return true
    else
      return false
    end
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = flavor + " jelly bean"
  end
end

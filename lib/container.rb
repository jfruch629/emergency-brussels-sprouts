class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def which_ingredient
    ingredients[0].name
  end

  def fill_with_ingredient(ingredient)
    ingredients << ingredient
  end

  def how_many_ingredients
    ingredients.count
  end
end

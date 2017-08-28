class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients, :count, :ingredient_count

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
    @weight_count = 0
    @ingredient_count = 0
  end

  def which_ingredient
    ingredients[0].name
  end

  def fill_with_ingredient(ingredient)
    @weight_count = @weight

    while @weight_count < @maximum_holding_weight + @weight
      ingredients << ingredient
      @weight_count += ingredient.weight
      @ingredient_count += 1
    end
    @weight = @weight_count.round
  end

  def how_many_ingredients
    @ingredient_count
  end

  def remove_one_ingredient
    ingredients.pop
    @ingredient_count -= 1
  end

  def empty
    ingredients.clear
    @ingredient_count = 0
  end
end

require './lib/dish'

class Potluck
  attr_reader :date, :dishes

  def initialize(date, dishes = [])
    @date = date
    @dishes = dishes
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    dishes_in_category = @dishes.find_all do |dish|
      dish.category == category
    end
    return dishes_in_category
  end

  def menu
    # menu is a hash where the keys are different categories and the values are
    # corresponding arrays with the names of the dishes as elements.
  end
end

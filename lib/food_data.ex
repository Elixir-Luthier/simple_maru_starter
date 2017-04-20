defmodule MaruCooking.FoodData do
  @menu %{ results: [:cheese_pizza,
                           :chocolate_cake,
                           :caesar_salad,
                           :cheese_burger,
                           :omelet,
                           :grilled_cheese,
                           :breadsticks,
                           :tiramisu,
                           :crostini,
                           :sicilian_spaghetti ]}
  @recipe %{
    cheese_pizza: [:dough, :tomato_sauce, :cheese],
    chocolate_cake: [:eggs, :flour, :sugar, :chocolate, :cream],
    caesar_salad: [:romaine_lettuce, :crouton, :tomato, :lettuce, :worcestershire_sauce, :dijon_mustard, :red_pepper_flakes, :extra_virgin_oil],
    cheese_burger: [:freshly_ground_chuck, :onion_powder, :deli_cheese, :larger_bunds],
    omelet: [:eggs, :water, :salt, :pepper, :butter, :shredded_cheese, :chopped_ham],
    grilled_cheese: [:american_cheese, :bread],
    breadsticks: [:flour, :vegetable_oil, :all_purpose_flour],
    tiramisu: [:egg_yolks, :sugar, :whole_milk, :mascarpone_cheese, :strong_coffee, :cognac, :italian_ladyfingers, :cocoa_powder, :bittersweet_chocolate],
    crostini: [:baguette, :olive_oil, :salt, :ground_pepper],
    sicilian_spaghetti: [:fine_bread_crumbs, :fresh_parsley, :olive_oil, :garlic_crushed, :anchovy]
  }
  def get_menu do
    @menu
  end

  def ingredients(food) do
    %{ ingredients: @recipe[food], item: food }
  end

  def eat(food) do
    food in @recipe || false
  end
end

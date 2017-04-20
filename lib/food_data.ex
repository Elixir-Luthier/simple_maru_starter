defmodule MaruCooking.FoodData do
  @menu %{ results: [:cheese_pizza,
                           :cake,
                           :caesar_salad,
                           :cheese_burger,
                           :omelet,
                           :grilled_cheese,
                           :breadsticks,
                           :tiramisu,
                           :crostini,
                           :capicollo,
                           :strolghino ]}
  def get_menu do
    @menu
  end
end

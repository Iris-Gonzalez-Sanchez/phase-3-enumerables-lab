require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
  
end

def get_names(spicy_foods)
  # your code here
  spicy_foods.map do |food_name|
    food_name[:name]
  end
end

def spiciest_foods(spicy_foods)
  # your code here
  spicy_foods.filter do |level|
    level[:heat_level] > 5
  end
end

def print_spicy_foods(spicy_foods)
  # your code here
  spicy_foods.each do |food|
    puts "#{ food[:name]} (#{ food[:cuisine]}) | Heat Level: #{ "🌶"*food[:heat_level]}"
  end
end
# binding.pry

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end

def sort_by_heat(spicy_foods)
  # your code here
  spicy_foods.sort_by do |heat_range|
    heat_range[:heat_level]
  end
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  # spicy_foods.filter do |hotter|
  #  "#{hotter[:name]} (#{hotter[:cuisine]}) | Heat Level: #{ "🌶"*hotter[:heat_level] > 5}"
   spiciest = spiciest_foods(spicy_foods)
   print_spicy_foods(spiciest)
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  total_heat_level = spicy_foods.sum do |food|
    food[:heat_level]
  end
  total_heat_level / spicy_foods.length
end

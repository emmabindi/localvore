uom = ["Each", "Bunch", "100g", "250g", "500g", "1kg"]

uom.each do | unit |
  Uom.create(unit: unit)
end 

puts "#{uom.count} UOM's added"

# -- CATEGORIES

category = ["Vegetables", "Fruit", "Herbs"]

category.each do | cat |
  Category.create(name: cat)
end

puts "#{category.count} categories added"

# # --- VEGETABLES 

veg_subcategory = ["Artichoke", "Asparagus", "Asian Greens", "Avocado", "Beans", "Beetroot", "Brocolli", "Brussel Sprouts", "Cabbage", "Capsicum", "Carrot", "Cauliflower", "Chilli", "Corn", "Celeriac", "Celery", "Cucumber", "Eggplant", "Fennel", "Garlic", "Ginger", "Kale", "Kholrabi", "Leek", "Lettuce", "Mushrooms", "Okra", "Olive", "Onion", "Parsnip", "Peas", "Potatos", "Pumpkin", "Radish", "Rhubarb", "Silverbeet", "Squash", "Spinach", "Swedes", "Tomato", "Turnip", "Tubers other", "Zucchini", "Other"]

veg_subcategory.each do | type |
  Subcategory.create(name: type, category_id:1)
end

puts "Veggies added"

# # --- FRUIT

fruit_subcategory = %w[
  Apple
  Apricot
  Banana
  Berries
  Cherry
  Coconut
  Date
  Dragonfruit
  Durian
  Feijoa
  Fig
  Grapes
  Grapefruit
  Guava
  Jackfruit
  Kiwi
  Kumquat
  Lemon
  Lime 
  Lychee
  Mandarin
  Mango
  Melons
  Nectarine
  Orange
  Papaya
  Passionfruit
  Peach
  Pear
  Persimmon
  Pineapple
  Plum
  Pomegranate
  Pomelo
  Quince 
  Tamarillo
  Yuzu
]

fruit_subcategory.each do | type |
  Subcategory.create(name: type, category_id:2)
end

puts "Fruit added"

# # --- HERBS

herb_subcategory = %w[Anise
Basil
Caraway
Chives
Coriander
Chamomile
Curry
Daikon
Dill
Fennel
Horseradish
Kaffir-lime
Lavender
Lemongrass
Marjoram
Mint
Mustard
Oregano
Parsley
Rosemary
Sage
Sorrel
Tarragon
Tumeric
Thyme]

herb_subcategory.each do | herb |
  Subcategory.create(name:herb, category_id: 3)
end 

puts "Herbs added"

# # --- 

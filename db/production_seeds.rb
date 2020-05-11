uom = ["Each", "Bunch", "100g", "250g", "500g", "1kg"]

uom.each do | unit |
  Uom.create(unit: unit)
end 

# -- CATEGORIES

category = ["Vegetables", "Fruit", "Herbs"]

category.each do | cat |
  Category.create(name: cat)
end

# # --- VEGETABLES 

subcategory = ["Artichoke", "Asparagus", "Asian Greens", "Avocado", "Beans", "Beetroot", "Brocolli", "Brussel Sprouts", "Cabbage", "Capsicum", "Carrot", "Cauliflower", "Chilli", "Corn", "Celeriac", "Celery", "Cucumber", "Eggplant", "Fennel", "Garlic", "Ginger", "Kale", "Kholrabi", "Leek", "Lettuce", "Mushrooms", "Okra", "Olive", "Onion", "Parsnip", "Peas", "Potatos", "Pumpkin", "Radish", "Rhubarb", "Silverbeet", "Squash", "Spinach", "Swedes", "Tomato", "Turnip", "Tubers other", "Zucchini", "Other"]

subcategory.each do | type |
  Subcategory.create(name: type)
end

# # ---

# fruit = %w[
#   Apple
#   Apricot
#   Banana
#   Berries
#   Cherry
#   Coconut
#   Date
#   Dragonfruit
#   Durian
#   Feijoa
#   Fig
#   Grapes
#   Grapefruit
#   Guava
#   Jackfruit
#   Kiwi
#   Kumquat
#   Lemon
#   Lime 
#   Lychee
#   Mandarin
#   Mango
#   Melons
#   Nectarine
#   Orange
#   Papaya
#   Passionfruit
#   Peach
#   Pear
#   Persimmon
#   Pineapple
#   Plum
#   Pomegranate
#   Pomelo
#   Quince 
#   Tamarillo
#   Yuzu
# ]

# # ---

# herb = %w[anise
# basil
# caraway
# chives
# coriander
# chamomile
# curry
# daikon
# dill
# fennel
# horseradish
# kaffir-lime
# lavender
# lemongrass
# marjoram
# mint
# mustard
# oregano
# parsley
# rosemary
# sage
# sorrel
# tarragon
# tumeric
# thyme].capitalize

# herb.each do | herb |
#   Herbs.create(name:herb)
# end 


# # --- 

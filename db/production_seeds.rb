categories = ["Vegetables", "Fruit", "Herbs"]

categories.each do | cat |
  Categories.create(category_type: cat)
end

veg = ["Artichoke", "Asparagus", "Asian Greens", "Avocado", "Beans", "Beetroot", "Brocolli", "Brussel Sprouts", "Cabbage", "Capsicum", "Carrot", "Cauliflower", "Chilli", "Corn", "Celeriac", "Celery", "Cucumber", "Eggplant", "Fennel", "Garlic", "Ginger", "Kale", "Kholrabi", "Leek", "Lettuce", "Mushrooms", "Okra", "Onion", "Parsnip", "Peas", "Potatos", "Pumpkin", "Radish", "Rhubarb", "Silverbeet", "Squash", "Spinach", "Swedes", "Tomato", "Turnip", "Tubers other", "Zucchini", "Other"]

veg.each do | veg |
  Categories.create(veg_type: veg)
end

herb = %w[anise
basil
caraway
chives
coriander
chamomile
curry
daikon
dill
fennel
horseradish
kaffir-lime
lavender
lemongrass
marjoram
mint
mustard
oregano
parsley
rosemary
sage
sorrel
tarragon
tumeric
thyme].capitalize



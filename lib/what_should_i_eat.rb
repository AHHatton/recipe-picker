# frozen_string_literal: true

#require_relative "what_should_i_eat/version"

module WhatShouldIEat
  def WhatShouldIEat.fresh
    result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s
    recipes = JSON.parse(result)
    recipeName = recipes.first['items'].first['label']
    recipeUrl = recipes.first['items'].first['url']

    puts "Dinner tonight is #{recipeName}. #{recipeUrl}"    
  end


end

WhatShouldIEat
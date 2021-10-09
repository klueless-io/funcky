def commands
  functions.map do |function|
    category = categories.find { |c| c.name == function.category }
  
    OpenStruct.new(
      category: function.category,
      name: function.name,
      category_description: category.description,
      function_description: function.description
    )
  end
end

def categories
  return @categories unless @categories.nil?
  
  result = KDoc.model :document do
    table :rows do
      fields :name, :description

      row :case               , "Tokenize and apply case and/or separator"
      row :comparison         , "Comparison helpers, eg. or, and, equal, not equal, less than, greater than etc."
      row :inflection         , "Inflection handling routines, eg. pluralize, singular, ordinalize"
      row :string             , "String handling helpers"
    end

  end
  
  @categories = result.raw_data_struct.rows
end
@categories = nil

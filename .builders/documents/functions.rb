def functions
  return @functions unless @functions.nil?
  
  result = KDoc.model :document do
    table :rows do
      fields :category,       :name, :alias, :description

      # row :case               , :backslash            , [:back_slash]                    , "convert to back slash notation"
      # row :case               , :camel                , [:upper_camel, :pascal]          , ""
      # row :case               , :constant             , [:constantize]                   , ""
      # row :case               , :dash                 , [:dasherize]                     , ""
      # row :case               , :dot                  , [:dotirize]                      , ""
      # row :case               , :double_colon         , []                               , ""
      # row :case               , :lowercase            , [:downcase]                      , ""
      # row :case               , :format_as            , []                               , ""
      # row :case               , :sentence             , [:humanize]                      , ""
      # row :case               , :lamel                , [:lower_camel]                   , ""
      # row :case               , :slash                , [:forwardslash, :forward_slash]  , ""
      # row :case               , :snake                , [:snake]                         , ""
      # row :case               , :title                , [:titleize]                      , ""
      # row :case               , :uppercase            , [:upper_case, :upcase]           , ""
  
      # row :comparison         , :and                  , [] , ""
      # row :comparison         , :default              , [] , ""
      # row :comparison         , :eq                   , [] , ""
      # row :comparison         , :gt                   , [] , ""
      # row :comparison         , :gte                  , [] , ""
      # row :comparison         , :lt                   , [] , ""
      # row :comparison         , :lte                  , [] , ""
      # row :comparison         , :ne                   , [] , ""
      # row :comparison         , :or                   , [] , ""
  
      row :a_inflection         , :ordinal              , ""
      # row :inflection         , :ordinalize           , ""
      # row :inflection         , :pluralize            , ""
      # row :inflection         , :pluralize_by_number  , ""
      # row :inflection         , :singularize          , ""
    end
  end
  
  @functions = result.raw_data_struct.rows
end
@functions = nil

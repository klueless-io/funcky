def use_cases
  # return @use_cases unless @use_cases.nil?
  
  KDoc.model :document do

    table :inputs do
      fields :name, :value

      row :title              , "Account Category"
      row :bsb_account        , "ABC 123"
      row :text1              , "the Quick brown Fox 99"
      row :sentence1          , "The quick  brown fox, jumped  over the lazy dog"
      row :sentence2          , "The quick brown fox"
      row :sentence3          , "jumped over the lazy dog"

    end

    table :rows do
      fields :input, :commands, :expected_value

      row :text1          , %i[backslash]     , 'the\quick\brown\fox99'
      row :text1          , %i[camel]         , 'TheQuickBrownFox99'



      # row :sentence3      , %i[plural]        , "jumped over the lazy dogs"
      # row :title          , %i[plural]        , "Account Categories"
      # row :sentence1      , %i[dash]          , "The-quick-brown-fox-jumped-over-the-lazy-dog"
      # row :sentence1      , %i[natural]       , "The quick brown fox, jumped over the lazy dog"
      # row :sentence1      , %i[lower dash]    , "the-quick-brown-fox-jumped-over-the-lazy-dog"
      # row :bsb_account    , %i[lower snake]   , "abc_123"
      # row :bsb_account    , %i[slash]         , "ABC/123"
    end

  end
  
  # @use_cases = result.raw_data_struct.rows
end
# @use_cases = nil


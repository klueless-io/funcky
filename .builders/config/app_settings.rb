def app
  @app ||= app_configuration.raw_data_struct
end

def app_configuration
  KDoc.model :app do
    settings do
      name              :funcky
      title             'funcky'
      description       'Funcky provides a set of functions (wrapped in the command pattern) that perform simple actions'
      app_path          '/Users/davidcruwys/dev/kgems/funcky'
      avatar            'Developer'
      main_story        'As a Developer, I want easy to use simple categorized functions, so I can easily add commonplace functionality to my application'
      author            'David Cruwys, Sean Wallace'
      author_email      'david@ideasmen.com.au'
      copyright_date    '2021'
    end
  end
end

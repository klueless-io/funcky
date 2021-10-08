Research these links and build a list of categories and functions

- https://handlebarsjs.com/guide/#installation
- https://github.com/helpers/handlebars-helpers
- https://github.com/klueless-io/handlebars-helpers
- https://rubygems.org
- https://www.ruby-toolbox.com/categories
- https://github.com/magynhard/lucky_case
- https://www.ruby-toolbox.com/projects/sanitize

- https://dry-rb.org/gems/dry-inflector/0.1/

- FUTURE: we will start generating code (of that DSL)

- NEXT:

- https://github.com/klueless-io/funcky
- Rename BaseCommand to BaseFunction
- Get 4 new functions working
  - Make sure you add each function's require to `lib/funcky.rb`
  - Uncomment the lib/**/file.rb
  - Uncomment the spec/**/file_spec.rb
    - Remove the section for handlebars
  - Run the spec and observe the errors
    - To shrink the errors, take the 1st `it` block and change to `fit`
  - Get all tests working
  - Make sure you do a commit and push after each completed function
  
- Constantize becomes constant
- back_slash becomes backslash
- upper_camel
- lower_camel

format_as('the quick brown fox', :pluralize,:upper,:dash)
'THE-QUICK-BROWN-FOXES'

Third party Javascript Library

| hbars        | funcky        | lucky | 
|-|-|-|
| back_slash   | back_slash    |   |
| camel        | camel         |   |
| constantize  | constantize   |   |
| dasherize    | dasherize     |   |
| dotirize     | dotirize      |   |
| double_colon | double_colon  |   |
| downcase     | downcase      |   |
| humanize     | humanize      |   |
| lamel        | lamel         |   |
| slash        | slash         |   |
| snake        | snake         |   |
| titleize     | titleize      |   |
| upcase       | upcase        |   |
|              |               |   |
|              |               |   |
|              |               |   |
|              |               |   |
|              |               |   |
|              |               |   |
|              |               |   |
|              |               |   |


### Lucky Case

camel_case
capital
capital_word_case
capitalize
capitalized
constantize
convert_case
dash_case
decapitalize
decapitalized
letter_case
letter_cases
lower_case
lucky_case
lucky_cases
mixed_case
not_capital
pascal_case
sentence_case
set_self_value
snake_case
swap_case
train_case
upper_case
upper_dash_case
upper_snake_case
upper_word_case
valid_case_string
word_case


  
  - Check Git HUB Actions that all is good

  - Check the examples (in comments)
  Continue researching the categories and functions


```bash
mkdir x
cd x
git clone git@github.com:rgrove/sanitize.git     
git clone git@github.com:magynhard/lucky_case.git
git clone git@github.com:dry-rb/dry-inflector.git
```


## Git Commands for Sean

```bash
# git status (gs)
git status

# pull latest code changes
git pull

# git add new files + commit message (or use shortcut gac)
git add .
git commit -am 'message'

# git add new files + commit message
gac 'what is this changed code doing'

# git push current commits
git push
```

```ruby

functions do
  category :array do
    function 'name', 'description', 'example'
  end
end

```
Research these links and build a list of categories and functions

- https://handlebarsjs.com/guide/#installation
- https://github.com/helpers/handlebars-helpers
- https://github.com/klueless-io/handlebars-helpers
- https://rubygems.org
- https://www.ruby-toolbox.com/categories
- https://github.com/magynhard/lucky_case
- https://www.ruby-toolbox.com/projects/sanitize
-

- create an new builder generator for Funcky
- we will compare the similarities (and deficiencies) with the generator we used to create the GEM itself.
- if you have done some research will turn it into a DSL
- we will start generating code (of that DSL)
- we will check in to github at least 1 completed function

- Rename BaseCommand to BaseFunction
- Get 4 new functions working
  - Make sure you add each function's require to `lib/funcky.rb`
  - Uncomment the lib/**/file.rb
  - Uncomment the spec/**/file_spec.rb
    - Remove the section for handlebars
  - Run the spec and observe the errors
    - To shrink the errors, take the 1st `it` block and change to `fit`
  - Get all tests working
  - Check the examples (in comments)
  - Make sure you do a commit and push after each completed function
  - Check Git HUB Actions that all is good
- Continue researching the categories and functions

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
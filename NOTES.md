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


NOTE: trailing digits seem to always be appended with no formatting...so tokenize perhaps
NOTE: garbage in / garbage out GIGO so that we don't cause grief
NOTE: lucky does this often: cut_underscores_at_start string
NOTE: lucky FORMATS = `capital: upper_case: lower_case:`
|funcky concept `_The Quick Brown Fox 99`| funcky altname | hbars  (15)      | lucky (12)        | notes | 
|-|-|-|-|-|
|=>backslash `_the\quick\brown\fox99`|| back_slash | -    |  back_slash (do not like fox 99=Fox99) | |
|=>camelcase `_TheQuickBrownFox99`| =>camelize?| camel        |     camel_case     |  tokenize first ; use hbars as fox 99 = Fox99 too|
|=>capital `The quick brown fox 99`| capitalize capitalized|         |     capital_word_case     |  `like humanize` lucky replaces dash, underscore with space
| => convert_case |||||
|=>contantize `_THE_QUICK_BROWN_FOX99`|| constantize  | constantize   | use lucky? no! Convert pascal case and cast to a constant use hbars? yes! |
|=>dasherize `_the-quick-brown-fox?99?` |dasherizelower dasherizeupper dasherizecamel dasherizepascal |dasherize?????| dash_case:/upper_dash_case:| dasherize @side effects: All text is in lower case   | dash_case: upper_dash_case:     |  hbars: yes with more...  funcky: `format_as(value, :plural, :camel, :dash )` the order can be :dash, :camel etc|
|=>decapitalize| decapitalized  |               |   | just like lowercase?
|=> dotirize `_the.quick.brown.fox99`| |dotirize     | -      | hbars: yes the.quick.brown.fox99  | 
|=> doublecolon `_The::Quick::Brown::Fox99`|| double_colon | -  |  hbars: ??? does Camel and :: eg The::Quick::Brown::Fox99 - funcky DO NOT ALTER TEXT use format if you want to|
| => humanize `_The quick brown fox 99`| =>aka sentancize =>sentancecase| humanize     | -      |  'the Quick brown Fox' = 'The quick brown fox' |
| =>lamel `_theQuickBrownFox99`| lamelize | lamel        | -         | # lamel case is the same as camel case except with the first character as lower case eg theQuickBrownFox NOTE: calls camelize |
| => letter_cases |||||
| => lowercase `_the quick brown fox 99`| |downcase     | lowercase      |  @lucky 'this-isAnExample_string' => 'this-isanexample_string' ; Funcky: alias for downcase, build for symbols too (numbers too?|
| mixed_case `???` |||mixed_case||
| not_capital `???` |||||
|=>pascal `_TheQuickBrownFox99`| pascalcase|   -      |     pascal_case     | 'this-isAnExample_string' => 'ThisIsAnExampleString' NOTE: used by constantize NOTE: a lot like Camel |
|sentence_case|||sentence_case |_The Quick Brown Fox 99| |
|set self value `??`|||| |
|=>slash `_The/Quick/Brown/Fox99` | forwardslash|         slash|         | the/Quick/brown/Fox99 or it { is_expected.to eq('the/quick/brown/fox') } NOTE: no upper/lowering or lowercasing |
|=>snake `_the_quick_brown_fox_99`| | snake 'twenty five 66'=>'twenty_five66'      | `snake_case:/upper_snake_case:` 'this-isAnExample_string' => 'this_is_an_example_string'         |   |
|=>swap_case | | | | |
|=>titleize `_The Quick Brown Fox 99`|| titleize 'tokenizer.parse(value, separator: space, preserve_case: true, compress_prefix_numerals: false, compress_suffix_numerals: false)' 'the quick brown fox 99' =>  The Quick Brown Fox 99   | -      |  note: different to camel etc where space before 99 is retained |
|=>traincase `_The-Quick-Brown-Fox-99` |              | | train_case             |   @example conversion 'this-isAnExample_string' => 'This-Is-An-Example-String'
|=>uppercase `_THE QUICK BROWN FOX 99`| upper_case?upper_dash_case?upper_snake_case? upper_word_case?| value.upcase = 'THE QUICK BROWN FOX 99'      | upper_word_case 'this-isAnExample_string' => 'THIS IS AN EXAMPLE STRING'   |  treat the same as lowercase |
|=>valid_case_string ||||| 
|=> word_case|   |  | upper_word_case: capital_word_case:         |                'this-isAnExample_string' => 'this is an example string' |
||              |               |   |
||              |               |   |
||              |               |   |
||              |               |   |
||              |               |   |

 
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
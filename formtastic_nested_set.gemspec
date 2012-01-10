Gem::Specification.new do |s|
  s.name        =  %q{formtastic_datepicker}
  s.version     = "0.1.2"
  s.authors     = ["izzm"]
  s.email       = ["vladislav.izoria@gmail.com"]
  s.summary     = %q{Formtastic datepicker plugin}
  s.description = %q{Connect jQuery datepicker to fortastic form}
  s.rdoc_options = ["--charset=UTF-8"]

  s.files = [
    "Gemfile",
    "Rakefile",
    "MIT-LICENSE",
    "README",
    "test/formtastic_datepicker_test.rb",
    "test/test_helper.rb",
    "lib/formtastic_datepicker.rb",
    "lib/formtastic_datepicker/engine.rb",
    "lib/formtastic_datepicker/hook.rb",
    "lib/formtastic_datepicker/helper.rb"
  ]

  s.require_paths = ["lib"]

  #s.add_dependency('json', '>= 1.5.1')
end

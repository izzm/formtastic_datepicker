require 'rails'

# FormtasticDatepicker
module FormtasticDatepicker
  class Engine < ::Rails::Engine
    initializer 'formtastic.datepicker' do
      if Object.const_defined?("Formtastic")
        ::Formtastic::SemanticFormBuilder.send :include, FormtasticDatepicker::Hooks::FormtasticBuilder
      end
    end
  end
end

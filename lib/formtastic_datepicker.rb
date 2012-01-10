module FormtasticDatepicker
  module Hooks
    autoload :FormtasticBuilder, 'formtastic_datepicker/hook.rb'
  end

  autoload :Helper, 'formtastic_datepicker/helper.rb'
end

require 'formtastic_datepicker/engine.rb'

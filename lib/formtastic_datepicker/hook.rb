module FormtasticDatepicker
  module Hooks
    module FormtasticBuilder
      def self.included(base)
        base.send(:include, InstanceMethods)
      end

      module InstanceMethods
        include FormtasticDatepicker::Helper

        def datepicker_input(method, options)
          format = options[:format] || Date::DATE_FORMATS[:default] || '%d %b %Y'
          inp_opts = options.delete(:input_html) || {}
          inp_opts[:value] ||= object.send(method).try(:strftime, format)

          clss = []
          clss << inp_opts.delete(:class).to_s
          clss << options.delete(:class).to_s

          options[:input_html] = {:class => "datepicker " + clss.join(' ')}.merge inp_opts
          ActiveRecord::Base.logger.info options.to_yaml
          basic_input_helper(:text_field, :string, method, options)
        end
      end
    end
  end
end

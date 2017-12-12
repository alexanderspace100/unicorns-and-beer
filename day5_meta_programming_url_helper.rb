class URLHelper

  def initialize(model_class)

    @model_class = model_class

    model_class.instance_methods(false).each do |method_name|

      # Would work too but is not so easy to read:
      # path_method_name = [
      #   method_name,
      #   "#{model_class.name.downcase.gsub('::', '_')}s",
      #   'path'
      # ].join('_').to_sym
      path_method_name = "#{method_name}_#{model_class.name.downcase.gsub('::', '_')}s_path".to_sym

      self.class.send(:define_method, path_method_name) do
        # Would work too but is not so easy to read:
        # model_class.name.downcase.split('::').push(method_name).unshift(nil).join('/')
        "/#{model_class.name.downcase.split('::').push(method_name).join('/')}"
      end
    end
  end
end


class Backend
  class Transaction

    def import
    end

    def show
    end
  end
end



instance = URLHelper.new(Backend::Transaction)

p instance.import_backend_transactions_path
p instance.show_backend_transactions_path

# # in view / template
# puts instance.import_backend_transactions_path
# puts instance.show_backend_transactions_path
# puts "should be: /backend/transaction/import"


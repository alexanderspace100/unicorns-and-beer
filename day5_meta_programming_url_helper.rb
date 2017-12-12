class URLHelper

  attr_reader :model_class

  def initialize(model_class)

    @model_class = model_class

    instance_methods.each do |method_name|

      define_path_method(method_name) do
        path_result(method_name)
      end
    end
  end

  private

  def instance_methods
    model_class.instance_methods(false)
  end

  def define_path_method(method_name, &block)
    self.class.send(:define_method, path_method_name(method_name), &block)
  end

  def model_name
    model_class.name
  end

  def model_name_downcased
    model_name.downcase
  end

  def model_name_downcased_plurialized
    "#{model_name_downcased}s"
  end

  def path_method_name(method_name)
    # Would work too but is not so easy to read:
    # [
    #   method_name,
    #   "#{model_name_downcased_plurialized.gsub('::', '_')}",
    #   'path'
    # ].join('_').to_sym
    "#{method_name}_#{model_name_downcased_plurialized.gsub('::', '_')}_path".to_sym
  end

  def path_result(method_name)
    # Would work too but is not so easy to read:
    # model_name_downcased.split('::').push(method_name).unshift(nil).join('/')
    "/#{model_name_downcased.split('::').push(method_name).join('/')}"
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


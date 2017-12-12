class Example

  # define_method(:amount) do |how_much|
  #   puts "Amount is #{how_much}"
  # end

  def initialize(method_name, &block)
    # self.class.define_method(method_name, &block)
    self.class.send(:define_method, method_name, &block)
    self.class.send(:define_method, "#{method_name}?".to_sym) do

      puts "BEFORE"
      yield
      puts "AFTER"
    end
  end


  # def amount(how_much)
  #   puts "Amount is #{how_much}"
  # end


  # define_method(:amount) do |how_much|
  #   puts "Amount is #{how_much}"
  # end


end


instance = Example.new(:say_hello) do
  puts "Hello world"
end

# instance.amount(3)

# exit

instance.say_hello
instance.say_hello_my_friend

exit

bad_example = Example.new(:say_bye) do
  puts "Bye cruel world"
end


bad_example.say_hello

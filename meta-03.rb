module Getter

  def getter name

    define_method(name) do
      instance_variable_get "@#{name}"
    end

  end

end

class Clazz
  extend Getter

  getter :teste

  def initialize
    @teste = "123"
  end

end

puts Clazz.new.teste
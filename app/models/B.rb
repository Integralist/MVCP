require 'app/models/Model'

class BModel < Model
  attr_reader :name, :age

  def initialize name, age
    super()

    @name = name
    @age = age
  end
end

require 'app/models/base'

class B < Base
  attr_reader :name, :age

  def initialize name, age
    super()

    @name = name
    @age = age
  end
end

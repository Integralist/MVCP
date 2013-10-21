require 'date'

class Base
  attr_accessor :date

  def initialize
    @date = DateTime.now
  end
end

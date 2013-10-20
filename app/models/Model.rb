require 'date'

class Model
  attr_accessor :date

  def initialize
    @date = DateTime.now
  end
end

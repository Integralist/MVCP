require 'app/presenters/base'
require 'app/models/b'

class Presenters::B < Presenters::Base
  attr_reader :run, :name, :age

  def initialize
    @run = true

    model = B.new('Mark', '99')
    prepare_view_data({ :name => @model.name, :age => @model.age })
  end
end

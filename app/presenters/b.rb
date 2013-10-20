require 'app/presenters/base'
require 'app/models/b'

class B < Base
  attr_reader :run, :name, :age

  def initialize
    @run = true

    load_model B.new('Mark', '99')
    prepare_view_data({ :name => @model.name, :age => @model.age })
  end
end
require 'app/presenters/Presenter'
require 'app/models/B'

class BPresenter < Presenter
  attr_reader :run, :name, :age

  def initialize
    @run = true

    load_model BModel.new('Mark', '99')
    prepare_view_data({ :name => @model.name, :age => @model.age })
  end
end

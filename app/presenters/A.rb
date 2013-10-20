require 'app/presenters/Presenter'
require 'app/models/A'

class APresenter < Presenter
  attr_reader :run, :title, :summary, :data

  def initialize
    @run = true

    load_model AModel.new('Presenter A Title', 'Presenter A Summary')
    prepare_view_data({ :title => @model.title, :summary => @model.summary, :data => @model.data })
  end
end

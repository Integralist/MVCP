require 'app/presenters/base'
require 'app/models/a'

class Presenters::A < Presenters::Base
  attr_reader :run, :title, :summary, :data

  def initialize
    @run = true

    load_model A.new('Presenter A Title', 'Presenter A Summary')
    prepare_view_data({ :title => @model.title, :summary => @model.summary, :data => @model.data })
  end
end

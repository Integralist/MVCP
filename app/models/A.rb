require 'app/models/Model'

class AModel < Model
  attr_reader :title, :summary, :data

  def initialize title, summary = 'no summary provided'
    super() # we must use empty parenthesis when calling super and not passing any arguments when the current Class has its own arguments (otherwise if this Class had no arguments then you can call `super` without parenthesis)

    @title = title
    @summary = summary
    @data = get_data
  end

  private

  def get_data
    "Some data for the 'A' Presenter"
  end
end

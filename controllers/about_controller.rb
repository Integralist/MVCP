require './presenters/A'
require './presenters/B'

class AboutController < ApplicationController
  get '/' do
    @a = APresenter.new
    @b = BPresenter.new

    title 'About'
    erb :about
  end
end

require './presenters/A'

class HomeController < ApplicationController
  get '/' do
      @a = APresenter.new

      title 'Home'
      erb :home
  end
end

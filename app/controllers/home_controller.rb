require 'app/presenters/a'

class HomeController < ApplicationController
  get '/' do
      @a = Presenters::A.new

      title 'Home'
      erb :home
  end
end

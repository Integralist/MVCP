require 'app/presenters/a'
require 'app/presenters/b'

class AboutController < ApplicationController
  get '/' do
    @a = Presenters::A.new
    @b = Presenters::B.new

    title 'About'
    erb :about
  end
end

class ContactController < ApplicationController
  get '/' do
    title 'Contact'
    erb :contact, :locals => { :xyz => 'XyZ' }

    # looks like passing variables via :locals
    # is cleaner than creating instance variables
    # but you can't protect against them not existing without using a begin/rescue
  end

  get '/foo' do
    title 'Foo'
    erb :contact
  end
end

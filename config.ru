require 'sinatra/base'
require './helpers/application_helper'
require './controllers/application_controller'

Dir.glob('./{helpers,controllers}/*.rb').each { |file| require file }

map('/')        { run HomeController    }
map('/about')   { run AboutController   }
map('/contact') { run ContactController }

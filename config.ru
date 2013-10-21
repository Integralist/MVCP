$: << File.expand_path('..', __FILE__)

require 'sinatra/base'
require 'app/helpers/application_helper'
require 'app/controllers/application_controller'

Dir.glob('app/{helpers,controllers}/*.rb').each { |file| require file }

map('/')        { run HomeController    }
map('/about')   { run AboutController   }
map('/contact') { run ContactController }

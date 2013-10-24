# I was having problems with needing to always use relative paths
# To fix this we use the following line of code
# What this does is it extracts the path from the current file
# That being config.ru (and luckily it's in the root directory)
# We then add it to Ruby's special `$LOAD_PATH`
# `$LOAD_PATH` is an Array of paths which tells Ruby where to search for files
# This is files that are either called via `require` or `load`
# You can access `$LOAD_PATH` using the shorthand `$:`
# And because it's an Array we can use `<<` to push the absolute path to it
$: << File.expand_path('..', __FILE__)

require 'sinatra/base'
require 'app/helpers/application_helper'
require 'app/controllers/application_controller'

Dir.glob('app/{helpers,controllers}/*.rb').each { |file| require file }

map('/')        { run HomeController    }
map('/about')   { run AboutController   }
map('/contact') { run ContactController }

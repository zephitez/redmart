require 'rubygems'
require 'bundler'
Bundler.require

# THIS IS THE MODEL
require './models/user'
require './models/product'

# THIS IS THE CONTROLLER
require './app'

#allow delete and put request
use Rack::MethodOverride


# CLASS REFERS TO THE CLASS NAME IN app.rb
run RedmartApp

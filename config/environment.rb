ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require '/Users/shirleyzhang/Development/code/sinatra-mvc-lab-web-022018/models/piglatinizer.rb'

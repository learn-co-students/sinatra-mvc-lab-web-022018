require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    @phrase = PigLatinizer.new

    erb :piglatinize
  end

  # post '/piglatinize' do
  #   # @phrase = PigLatinizer.new
  #   erb :piglatinize
  # end

end

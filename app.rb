require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # @analyzed_text = TextAnalyzer.new(params[:user_text])
    translator = PigLatinizer.new
    @translated_text = translator.to_pig_latin(params[:user_phrase])
    erb :results
  end
end

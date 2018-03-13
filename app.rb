require_relative 'config/environment'

# binding.pry

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinizer = PigLatinizer.new
    @pig_latinized = piglatinizer.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end

end

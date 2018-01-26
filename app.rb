require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "views/pirates") }

    get '/' do
      erb :root
    end
    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship_1 = Ship.new(params[:pirate][0])
      @ship_2 = Ship.new(params[:pirate][1])
      erb :show
    end

  end
end

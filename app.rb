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
      binding.pry
      @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["height"], params["pirate"]["weight"])
      @ship_1 = Ship.new(params["pirate"][0]["name"],params["pirate"][0]["type"], params["pirate"][0]["booty"])
      @ship_2 = Ship.new(params["pirate"][1]["name"], params["pirate"][1]["type"], params["pirate"][1]["booty"])
      erb :show
    end

  end
end

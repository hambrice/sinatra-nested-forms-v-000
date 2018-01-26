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

    post '/show' do
      @pirate = Pirate.new(params[pirate])
    end

  end
end

require 'sinatra'

helpers do
  def demo_league_id
    "123456789"
  end
end

get '/' do
  erb :index
end

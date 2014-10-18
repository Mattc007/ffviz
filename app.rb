require 'sinatra'

class FFViz::App < Sinatra::Base

  DEFAULT_HOST = "espn"
  DEFAULT_LEAGUE_ID = "123456789"
  DEFAULT_SEASON = "2014"

  get '/' do
    erb :index
  end

  get '/visualize' do
    host = params.fetch(:host, DEFAULT_HOST)
    league_id = params.fetch(:league, DEFAULT_LEAGUE_ID)
    season = params.fetch(:season, DEFAULT_SEASON)

    redirect "/visualize/#{host}/#{league_id}/#{season}"
  end

  get '/visualize/:host/:league/?:season?' do
    @host = params[:host]
    @league_id = params[:league]
    @season = params.fetch(:season, DEFAULT_SEASON)

    collector = FFViz::Collector.new(@host, @league_id, @season)

    content_type 'text/html', :charset => 'utf-8'
    erb :visualize
  end
end

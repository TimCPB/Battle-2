require 'sinatra/base'
require 'sinatra'
require './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    "Testing infrastructure working!"
    erb (:index)
  end

  post "/names" do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect "/play"
  end

  get "/play" do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_hp = $player2.hp
    erb(:play)
  end

  post "/attack" do
    @player1 = $player1.name
    @player2 = $player2.name
    $player2.reduce_hp
    @player2_hp = $player2.hp
    erb(:attack)
  end

  run! if app_file == $0
end

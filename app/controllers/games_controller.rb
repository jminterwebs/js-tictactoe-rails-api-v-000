class GamesController < ApplicationController

  def index
   games = Game.all
   render json: games
 end

  def create
    game = Game.create(game_params)
    render json: game
  end

  def show
    game = Game.find(param[:id])
    render json: game
  end

  def update
    game = Game.find(params[:id])
    game.update_attributes(game_params)
  end

  private

  def game_params
    params.require(:game).permit(state: [])
  end



end
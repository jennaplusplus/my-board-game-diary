class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @url_path = games_path
  end

  def create
    Game.create(game_params[:game])
    redirect_to games_path
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
    @url_path = game_path
  end

  def update
    Game.update(params[:id], game_params[:game])
    redirect_to games_path
  end

  def destroy
    Game.destroy(params[:id])
    redirect_to games_path
  end


  private

  def game_params
    params.permit(game:[:name, :genre, :description, :time_to_play, :min_players, :max_players])
  end
end

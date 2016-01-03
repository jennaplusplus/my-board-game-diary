class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params[:game])
    if @game.save
      redirect_to games_path
    else
      render "new"
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.update(params[:id], game_params[:game])
    if @game.save
      redirect_to games_path
    else
      render "new"
    end
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

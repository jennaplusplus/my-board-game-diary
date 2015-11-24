class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
    @url_path = players_path
  end

  def create
    Player.create(player_params[:player])
    redirect_to players_path
  end

  def edit
    @player = Player.find(params[:id])
    @url_path = player_path
  end

  def update
    Player.update(params[:id], player_params[:player])
    redirect_to players_path
  end

  def destroy
    Player.destroy(params[:id])
    redirect_to players_path
  end


  private

  def player_params
    params.permit(player:[:name, :email, :bio, :age, :gender])
  end
end

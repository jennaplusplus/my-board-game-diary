class PlayersController < ApplicationController
  def index

    if request.path_info.include?('meetups')
      @meetup = Meetup.find(params[:meetup_id])
      @players = @meetup.players
      render :meetups_players_index
    else
      @players = Player.all
      render :index
    end

  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params[:player])
    if @player.save
      redirect_to players_path
    else
      render "new"
    end

  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.update(params[:id], player_params[:player])
    if @player.save
    redirect_to players_path
    else
      render "new"
    end
  end

  def destroy
    Player.destroy(params[:id])
    redirect_to players_path
  end


  private

  def player_params
    params.permit(player:[:name, :email, :bio, :age, :city, :state])
  end
end

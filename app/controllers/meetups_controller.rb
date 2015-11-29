class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
  end

  def show
    @meetup = Meetup.find(params[:id])
    @players = @meetup.players

    @games = []

    @meetup.events.each do |event|
      @games.push(event.game)
    end

  end

  def new
    @meetup = Meetup.new
    @url_path = meetups_path
  end

  def create
    Meetup.create(meetup_params[:meetup])
    redirect_to meetups_path
  end

  def edit
    @meetup = Meetup.find(params[:id])
    @url_path = meetup_path
  end

  def update
    Meetup.update(params[:id], meetup_params[:meetup])
    redirect_to meetups_path
  end

  def add_players
    meetup = Meetup.find(params[:meetup_id])
    player = Player.find(params[:meetup][:players])
    meetup.players << player
    redirect_to meetup_players_path
  end

  def remove_player
    meetup = Meetup.find(params[:meetup_id])
    player = Player.find(params[:id])
    meetup.players.delete(player)
    redirect_to meetup_path(meetup)
  end

  def destroy
    Meetup.destroy(params[:id])
    redirect_to meetups_path
  end

  private

  def meetup_params
    params.permit(meetup:[:location, :date, :duration, :players])
  end
end

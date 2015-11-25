class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
  end

  def show
    @meetup = Meetup.find(params[:id])
    @games = []

    @meetup.events.each do |event|
      @games.push(Game.find(event.game_id))
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

  def destroy
    Meetup.destroy(params[:id])
    redirect_to meetups_path
  end

  private

  def meetup_params
    params.permit(meetup:[:location, :date, :duration])
  end
end

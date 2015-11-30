class EventsController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
    @meetup = Meetup.find(params[:meetup_id])
    @event = Event.new
    @url_path = meetup_events_path
  end

  def create
    event = Event.create(event_params[:event])
    event.meetup = Meetup.find(params[:meetup_id])
    event.save
    meetup = Meetup.find(params[:meetup_id])
    player_ids = params[:event][:players]
    player_ids.pop
    players = Player.find(player_ids)
    event.players << players
    redirect_to meetup_event_path(meetup_id: params[:meetup_id], id: event.id)
  end

  def edit
    @meetup = Meetup.find(params[:meetup_id])
    @event = Event.find(params[:id])
    @url_path = meetup_event_path(meetup_id: params[:meetup_id], id: params[:id])
  end

  def update
    Event.update(params[:id], event_params[:event])
    redirect_to meetup_event_path(meetup_id: params[:meetup_id], id: params[:id])
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.permit(event:[:game_id, :players, :duration, :outcome, :rating, :notes])
  end

end

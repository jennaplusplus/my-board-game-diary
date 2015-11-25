class EventsController < ApplicationController
  def index

  end

  def new
    @event = Event.new
    @url_path = meetup_events_path
  end

  def create
    event = Event.create(event_params[:event])
    redirect_to meetup_event_path(meetup_id: params[:meetup_id], id: event.id)
  end

  def show

  end

  private

  def event_params
    params.permit(event:[:game_id, :meetup_id])
  end

end

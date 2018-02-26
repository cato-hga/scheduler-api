class Api::V1::EventsController < ApplicationController
  def index
    events = Event.all

    render json: {status: 'SUCCESS', message: 'Loaded Events', data: events}, status: :ok
  end

  def show
    event = Event.find(params[:id])

    render json: {status: 'SUCCESS', message: 'Loaded Event', data: event}, status: :ok
  end

  def create
    event = Event.new(event_params)

    if event.save
      render json: {status: 'SUCCESS', message: 'Saved Event', data: event}, status: :ok
    else
      render json: {status: 'ERROR', message: 'Event not Saved', data: event.errors}, status: :unprocessable_entity 
    end  
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    render json: {status: 'SUCCESS', message: 'Deleted Event', data: event}, status: :ok
  end

  private

  def event_params
    params.permit(:name)
  end
end
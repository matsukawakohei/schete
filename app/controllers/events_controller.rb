class EventsController < ApplicationController
  def index
    @events = Event.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: '予定を作成しました'
    else
      render :new
    end
  end


  private
  def event_params
    params.require(:event).permit(:title, :place, :memo, :start_date, :end_date)
  end

end

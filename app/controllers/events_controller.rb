class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]

  def new
    @event = Event.new
    if params[:task]
      @task = Task.find(params[:task])
      @event.task_id = @task.id
      @event.sequence = @task.events.exists? ? @task.events.last.sequence + 1 : 1
    end
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    #@event.created_by = current_user.id
    respond_to do |format|
      if @event.save
        format.html { redirect_to task_path(@event.task_id), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    #@event.updated_by = current_user.id
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to task_path(@event.task_id), notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:code, :sequence, :task_id, :position_id, :owner, :title, :description, :file_url, :document, :position_desc)
    end

end

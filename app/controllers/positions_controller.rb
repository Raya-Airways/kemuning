class PositionsController < ApplicationController
  before_action :set_position, only: %i[ show edit update destroy publish_task ]

  # GET /positions or /positions.json
  def index
    @positions = Position.order(combo_code: :asc)
    if params[:search]
      if params[:search] == "level2"
        @positions = @positions.where("length(combo_code) < 5" )
      elsif params[:search] == "level3"
        @positions = @positions.where("length(combo_code) <= 6" )
      end
    end
  end

  # GET /positions/1 or /positions/1.json
  def show
  end

  # GET /positions/new
  def new
    @position = Position.new
    @positions = Position.order(combo_code: :asc)
    if params[:reports_to]
      @position.parent_id = params[:reports_to].to_i
    end
  end

  # GET /positions/1/edit
  def edit
    @positions = Position.order(combo_code: :asc)
  end

  # POST /positions or /positions.json
  def create
    @position = Position.new(position_params)

    respond_to do |format|
      if @position.save
        format.html { redirect_to @position, notice: "Position was successfully created." }
        format.json { render :show, status: :created, location: @position }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positions/1 or /positions/1.json
  def update
    respond_to do |format|
      if @position.update(position_params)
        format.html { redirect_to @position, notice: "Position was successfully updated." }
        format.json { render :show, status: :ok, location: @position }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positions/1 or /positions/1.json
  def destroy
    @position.destroy
    respond_to do |format|
      format.html { redirect_to positions_url, notice: "Position was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  #  ----   PDF Reports ----

  def publish_tasks
    @positions = Position.order(combo_code: :asc).includes(:tasks).where.not(tasks: {id: nil})
    respond_to do |format|
       format.pdf do
         pdf = PublishTasks.new(@positions, view_context)
         send_data pdf.render, filename: "BPA_Raya_Airways_#{Date.today}-",
                               type: "application/pdf",
                               disposition: "inline"
       end
     end
  end

  def publish_task
    respond_to do |format|
       format.pdf do
         pdf = PublishTask.new(@position, view_context)
         send_data pdf.render, filename: "BPA_#{@position.combo_code.gsub('.','')}_#{@position.name}_#{Date.today}",
                               type: "application/pdf",
                               disposition: "inline"
       end
     end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def position_params
      params.require(:position).permit(:code, :name, :parent_id, :mission)
    end
end

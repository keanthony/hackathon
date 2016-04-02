class ParticipantsController < ApplicationController

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @participant = Participant.new
    @event = Event.find(params[:event_id])
    @participant
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    event = Event.find(params[:subaction])
    @participant = Participant.new(participant_params)
    @participant.event = event
    respond_to do |format|
      if @participant.save
        format.html { redirect_to @participant.event, notice: 'Participant was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @participant.update(participant_params)
        format.html { redirect_to @participant.event, notice: 'Participant was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = @participant.event
    @participant.destroy
    respond_to do |format|
      format.html { redirect_to @event, notice: 'Participant was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_params
      params.require(:participant).permit(:name, :major, :concentration, :id_number, :email, :event_id)
    end

end

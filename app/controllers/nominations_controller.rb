class NominationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_nomination, only: %i[ show edit update destroy ]

  # GET /nominations or /nominations.json
  def index
    @nominations = Nomination.all.order('created_at DESC')
  end

  # GET /nominations/1 or /nominations/1.json
  def show
  end

  # GET /nominations/new
  def new
    @nomination = Nomination.new
  end

  # GET /nominations/1/edit
  def edit
  end

  # POST /nominations or /nominations.json
  def create
  
    @nomination = Nomination.new(nomination_params)
    thisUser = User.find_by(fName: params[:receiverName])
    @nomination.user_id = thisUser.id
    @nomination.senderId = current_user.id
    @nomination.senderName = current_user.fName

    respond_to do |format|
      if @nomination.save
        format.html { redirect_to nomination_url(@nomination), notice: "Nomination was successfully created." }
        format.json { render :show, status: :created, location: @nomination }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nomination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nominations/1 or /nominations/1.json
  def update
    respond_to do |format|
      if @nomination.update(nomination_params)
        format.html { redirect_to nomination_url(@nomination), notice: "Nomination was successfully updated." }
        format.json { render :show, status: :ok, location: @nomination }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nomination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nominations/1 or /nominations/1.json
  def destroy
    @nomination.destroy

    respond_to do |format|
      format.html { redirect_to nominations_url, notice: "Nomination was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nomination
      @nomination = Nomination.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nomination_params
      params.require(:nomination).permit(:nom_type, :senderId, :senderName, :user_id, :receiverName, :receiverImage, :body)
    end
end

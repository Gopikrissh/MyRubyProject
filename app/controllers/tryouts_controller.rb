class TryoutsController < ApplicationController
  before_action :set_tryout , only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_profile!, only: [:index]
  before_action :permissions , only: [:new, :edit, :create,:update, :destroy]
 

  
#GEt /tryouts/confirm
  def confirm
  #@player_tryout = Player.player_tryouts.find(:tryout_id => @@current_tryout, :profile_id => current_profile.id)
  @player = Player.find(current_profile.id)
  @tryout = Tryout.find(params[:id])
  end


  # GET /tryouts
  # GET /tryouts.json
  def index
    @tryouts = Tryout.all
    #binding.pry
  end

  # GET /tryouts/1
  # GET /tryouts/1.json
  def show
  end

  # GET /tryouts/new
  def new
    #redirect_to tryouts_path if current_profile.user.type == "Player"
    @tryout = Tryout.new
  end

  # GET /tryouts/1/edit
  def edit

       #redirect_to tryouts_path if current_profile.user.type == "Player"

  end

  # POST /tryouts
  # POST /tryouts.json
  def create
#redirect_to tryouts_path if current_profile.user.type == "Player"
    @tryout = Tryout.new(tryout_params)

    respond_to do |format|
      if @tryout.save
        format.html { redirect_to @tryout, notice: 'Tryout was successfully created.' }
        format.json { render :show, status: :created, location: @tryout }
      else
        format.html { render :new }
        format.json { render json: @tryout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tryouts/1
  # PATCH/PUT /tryouts/1.json
  def update
#redirect_to tryouts_path if current_profile.user.type == "Player"
    respond_to do |format|
      if @tryout.update(tryout_params)
        format.html { redirect_to @tryout, notice: 'Tryout was successfully updated.' }
        format.json { render :show, status: :ok, location: @tryout }
      else
        format.html { render :edit }
        format.json { render json: @tryout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tryouts/1
  # DELETE /tryouts/1.json
  def destroy
	#redirect_to tryouts_path if current_profile.user.type == "Player"
    @tryout.destroy
    respond_to do |format|
      format.html { redirect_to tryouts_url, notice: 'Tryout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tryout
      @tryout = Tryout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tryout_params
      params.require(:tryout).permit(:date, :fee, :address1, :address2, :city, :state, :zip)
    end
    
    def permissions
	redirect_to tryouts_path if current_profile.user.type == "Player"
    end

end

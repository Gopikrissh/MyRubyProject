class PlayersController < ApplicationController
  before_action :set_player, only: [:show,:edit, :update, :destroy]
  before_action :authenticate_profile!

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new 
    if Player.exists?(current_profile.id)
      #do nothing for now
      redirect_to edit_player_path(current_profile.id), notice: 'Player exists'
    else
      @player = Player.new
      @player.assign_attributes(:profile_id => current_profile.id)
      @player.save
    end

  end

  # GET /players/1/edit
  def edit
    #@player = Player.create

    #authenticate_profile!
    #@player.assign_attributes(:profile_id => current_profile.id)
  end

  # POST /players
  # POST /players.json
  def create

    @profile = Profile.find(params[:profile_id])
    @player = @profile.players.create(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_player
    @player = Player.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def player_params
    params.require(:player).permit(:type, :first_name, :last_name, :username, :email, :phone, :gender, :dob, :address1, :address2, :city, :state, :zip, :experience, :profile_id)
  end
end

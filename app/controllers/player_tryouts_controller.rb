class PlayerTryoutsController < ApplicationController
  before_action :set_player_tryout, only: [:show, :edit, :update, :destroy]
  #before_action :set_tryout

  # GET /player_tryouts
  # GET /player_tryouts.json
  def index
    @player_tryouts = PlayerTryout.all
  end

  # GET /player_tryouts/1
  # GET /player_tryouts/1.json
  def show
  end

  # GET /player_tryouts/new
  def new
    @player_tryout = PlayerTryout.new
  end

  # GET /player_tryouts/1/edit
  def edit
  end

  # POST /player_tryouts
  # POST /player_tryouts.json
  def create
  #@post = Post.find(params[:post_id])
 #   @comment = @post.comments.create(comment_params)

    @tryout = Tryout.find(params[:tryout_id])
    @player_tryout = @tryout.player_tryouts.create(:player_id => current_profile.id)
    respond_to do |format|
      if @player_tryout.save
        format.html { redirect_to new_tryout_player_path(@tryout.id), notice: 'Player tryout was successfully created.' }
        #format.html { redirect_to new_player_path(tryout_id: @tryout.id), notice: 'Player tryout was successfully created.' }
        format.json { render :show, status: :created, location: @player_tryout }
      else
        format.html { render :new }
        format.json { render json: @player_tryout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_tryouts/1
  # PATCH/PUT /player_tryouts/1.json
  def update
    respond_to do |format|
      if @player_tryout.update(player_tryout_params)
        format.html { redirect_to @player_tryout, notice: 'Player tryout was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_tryout }
      else
        format.html { render :edit }
        format.json { render json: @player_tryout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_tryouts/1
  # DELETE /player_tryouts/1.json
  def destroy
    @player_tryout.destroy
    respond_to do |format|
      format.html { redirect_to player_tryouts_url, notice: 'Player tryout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_tryout
      @player_tryout = PlayerTryout.find(params[:id])
    end

 # def set_tryout
  #  @tryout = Tryout.find(params[:tryout_id])
 # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_tryout_params
      params.require(:player_tryout).permit(:player_id, :tryout_id, :payment)
    end
end

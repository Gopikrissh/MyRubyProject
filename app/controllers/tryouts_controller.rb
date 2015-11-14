class TryoutsController < ApplicationController
  before_action :set_tryout, only: [:show, :edit, :update, :destroy]

  # GET /tryouts
  # GET /tryouts.json
  def index
    @tryouts = Tryout.all
  end

  # GET /tryouts/1
  # GET /tryouts/1.json
  def show
  end

  # GET /tryouts/new
  def new
    @tryout = Tryout.new
  end

  # GET /tryouts/1/edit
  def edit
  end

  # POST /tryouts
  # POST /tryouts.json
  def create
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
end

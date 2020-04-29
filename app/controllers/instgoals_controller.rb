class InstgoalsController < ApplicationController
  before_action :set_instgoal, only: [:show, :edit, :update, :destroy]

  # GET /instgoals
  # GET /instgoals.json
  def index
    @instgoals = Instgoal.all
  end

  # GET /instgoals/1
  # GET /instgoals/1.json
  def show
  end

  # GET /instgoals/new
  def new
    @instgoal = Instgoal.new
  end

  # GET /instgoals/1/edit
  def edit
  end

  # POST /instgoals
  # POST /instgoals.json
  def create
    @instgoal = Instgoal.new(instgoal_params)

    respond_to do |format|
      if @instgoal.save
        format.html { redirect_to @instgoal, notice: 'Instgoal was successfully created.' }
        format.json { render :show, status: :created, location: @instgoal }
      else
        format.html { render :new }
        format.json { render json: @instgoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instgoals/1
  # PATCH/PUT /instgoals/1.json
  def update
    respond_to do |format|
      if @instgoal.update(instgoal_params)
        format.html { redirect_to @instgoal, notice: 'Instgoal was successfully updated.' }
        format.json { render :show, status: :ok, location: @instgoal }
      else
        format.html { render :edit }
        format.json { render json: @instgoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instgoals/1
  # DELETE /instgoals/1.json
  def destroy
    @instgoal.destroy
    respond_to do |format|
      format.html { redirect_to instgoals_url, notice: 'Instgoal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instgoal
      @instgoal = Instgoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instgoal_params
      params.require(:instgoal).permit(:goalNum, :goalText, :goalDetails, :text)
    end
end

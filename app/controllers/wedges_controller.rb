class WedgesController < ApplicationController
  before_action :set_wedge, only: [:show, :edit, :update, :destroy]

  # GET /wedges
  # GET /wedges.json
  def index
    @wedges = Wedge.all
  end

  # GET /wedges/1
  # GET /wedges/1.json
  def show

  end

  # GET /wedges/new
  def new
    @wedge = Wedge.new
  end

  # GET /wedges/1/edit
  def edit
  end

  # POST /wedges
  # POST /wedges.json
  def create
    @wedge = Wedge.new(wedge_params)

    respond_to do |format|
      if @wedge.save
        format.html { redirect_to @wedge, notice: 'Wedge was successfully created.' }
        format.json { render :show, status: :created, location: @wedge }
      else
        format.html { render :new }
        format.json { render json: @wedge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wedges/1
  # PATCH/PUT /wedges/1.json
  def update
    respond_to do |format|
      if @wedge.update(wedge_params)
        format.html { redirect_to @wedge, notice: 'Wedge was successfully updated.' }
        format.json { render :show, status: :ok, location: @wedge }
      else
        format.html { render :edit }
        format.json { render json: @wedge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wedges/1
  # DELETE /wedges/1.json
  def destroy
    @wedge.destroy
    respond_to do |format|
      format.html { redirect_to wedges_url, notice: 'Wedge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wedge
      @wedge = Wedge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wedge_params
      params.require(:wedge).permit(:title, :input_type_id, :output_type_id, :description)
    end
end

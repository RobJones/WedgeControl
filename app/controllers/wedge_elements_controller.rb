class WedgeElementsController < ApplicationController
  before_action :set_wedge_element, only: [:show, :edit, :update, :destroy]

  # GET /wedge_elements
  # GET /wedge_elements.json
  def index
    @wedge_elements = WedgeElement.all
  end

  # GET /wedge_elements/1
  # GET /wedge_elements/1.json
  def show
  end

  # GET /wedge_elements/new
  def new
    @wedge_element = WedgeElement.new
  end

  # GET /wedge_elements/1/edit
  def edit
  end

  # POST /wedge_elements
  # POST /wedge_elements.json
  def create
    @wedge_element = WedgeElement.new(wedge_element_params)

    respond_to do |format|
      if @wedge_element.save
        format.html { redirect_to @wedge_element, notice: 'Wedge element was successfully created.' }
        format.json { render :show, status: :created, location: @wedge_element }
      else
        format.html { render :new }
        format.json { render json: @wedge_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wedge_elements/1
  # PATCH/PUT /wedge_elements/1.json
  def update
    respond_to do |format|
      if @wedge_element.update(wedge_element_params)
        format.html { redirect_to @wedge_element, notice: 'Wedge element was successfully updated.' }
        format.json { render :show, status: :ok, location: @wedge_element }
      else
        format.html { render :edit }
        format.json { render json: @wedge_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wedge_elements/1
  # DELETE /wedge_elements/1.json
  def destroy
    @wedge_element.destroy
    respond_to do |format|
      format.html { redirect_to wedge_elements_url, notice: 'Wedge element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wedge_element
      @wedge_element = WedgeElement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wedge_element_params
      params.require(:wedge_element).permit(:title, :handles_lists, :output_is_list, :output_type_id, :input_type_id)
    end
end

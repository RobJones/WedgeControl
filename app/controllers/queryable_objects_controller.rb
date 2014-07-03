class QueryableObjectsController < ApplicationController
  before_action :set_queryable_object, only: [:show, :edit, :update, :destroy]

  # GET /queryable_objects
  # GET /queryable_objects.json
  def index
    @queryable_objects = QueryableObject.all
  end

  # GET /queryable_objects/1
  # GET /queryable_objects/1.json
  def show
  end

  # GET /queryable_objects/new
  def new
    @queryable_object = QueryableObject.new
  end

  # GET /queryable_objects/1/edit
  def edit
  end

  # POST /queryable_objects
  # POST /queryable_objects.json
  def create
    @queryable_object = QueryableObject.new(queryable_object_params)

    respond_to do |format|
      if @queryable_object.save
        format.html { redirect_to @queryable_object, notice: 'Queryable object was successfully created.' }
        format.json { render :show, status: :created, location: @queryable_object }
      else
        format.html { render :new }
        format.json { render json: @queryable_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queryable_objects/1
  # PATCH/PUT /queryable_objects/1.json
  def update
    respond_to do |format|
      if @queryable_object.update(queryable_object_params)
        format.html { redirect_to @queryable_object, notice: 'Queryable object was successfully updated.' }
        format.json { render :show, status: :ok, location: @queryable_object }
      else
        format.html { render :edit }
        format.json { render json: @queryable_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queryable_objects/1
  # DELETE /queryable_objects/1.json
  def destroy
    @queryable_object.destroy
    respond_to do |format|
      format.html { redirect_to queryable_objects_url, notice: 'Queryable object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queryable_object
      @queryable_object = QueryableObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def queryable_object_params
      params.require(:queryable_object).permit(:name, :description)
    end
end

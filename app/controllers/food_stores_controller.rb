class FoodStoresController < ApplicationController
  before_action :set_food_store, only: %i[ show edit update destroy ]

  # GET /food_stores or /food_stores.json
  def index
    @food_stores = FoodStore.all
  end

  # GET /food_stores/1 or /food_stores/1.json
  def show
  end

  # GET /food_stores/new
  def new
    @food_store = FoodStore.new
  end

  # GET /food_stores/1/edit
  def edit
  end

  # POST /food_stores or /food_stores.json
  def create
    @food_store = FoodStore.new(food_store_params)

    respond_to do |format|
      if @food_store.save
        format.html { redirect_to @food_store, notice: "Food store was successfully created." }
        format.json { render :show, status: :created, location: @food_store }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_stores/1 or /food_stores/1.json
  def update
    respond_to do |format|
      if @food_store.update(food_store_params)
        format.html { redirect_to @food_store, notice: "Food store was successfully updated." }
        format.json { render :show, status: :ok, location: @food_store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_stores/1 or /food_stores/1.json
  def destroy
    @food_store.destroy
    respond_to do |format|
      format.html { redirect_to food_stores_url, notice: "Food store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_store
      @food_store = FoodStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_store_params
      params.require(:food_store).permit(:name, :zipCode, :city, :streetAddress, :openHours, :closeHours)
    end
end

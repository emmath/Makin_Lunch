class IngredientshipsController < ApplicationController
  # GET /ingredientships
  # GET /ingredientships.json
  def index
    @ingredientships = Ingredientship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredientships }
    end
  end

  # GET /ingredientships/1
  # GET /ingredientships/1.json
  def show
    @ingredientship = Ingredientship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredientship }
    end
  end

  # GET /ingredientships/new
  # GET /ingredientships/new.json
  def new
    @ingredientship = Ingredientship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredientship }
    end
  end

  # GET /ingredientships/1/edit
  def edit
    @ingredientship = Ingredientship.find(params[:id])
  end

  # POST /ingredientships
  # POST /ingredientships.json
  def create
    @ingredientship = Ingredientship.new(params[:ingredientship])

    respond_to do |format|
      if @ingredientship.save
        format.html { redirect_to @ingredientship, notice: 'Ingredientship was successfully created.' }
        format.json { render json: @ingredientship, status: :created, location: @ingredientship }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredientship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredientships/1
  # PUT /ingredientships/1.json
  def update
    @ingredientship = Ingredientship.find(params[:id])

    respond_to do |format|
      if @ingredientship.update_attributes(params[:ingredientship])
        format.html { redirect_to @ingredientship, notice: 'Ingredientship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredientship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredientships/1
  # DELETE /ingredientships/1.json
  def destroy
    @ingredientship = Ingredientship.find(params[:id])
    @ingredientship.destroy

    respond_to do |format|
      format.html { redirect_to ingredientships_url }
      format.json { head :no_content }
    end
  end
end

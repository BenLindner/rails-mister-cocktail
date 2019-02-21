class CocktailsController < ApplicationController
 before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    @doses = @cocktail.doses
  end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
  end

  # GET /cocktails/1/edit
  def edit
  end

  # POST /cocktails
  # POST /cocktails.json
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path
    else
      # If the save failed, we render the new template again
      # Giving the form an object with errors nested inside it.
      # Simpleform will handle the displayment of errors
      render :new
    end
  end

  # PATCH/PUT /cocktails/1
  # PATCH/PUT /cocktails/1.json
  def update

  end

  # DELETE /cocktails/1
  # DELETE /cocktails/1.json
  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'Cocktail was successfully smashed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cocktail_params
      params.require(:cocktail).permit(:name,)
    end
end

class IngredientsController < ApplicationController

  def index
    if params[:food_group]
      @ingredients = Ingredient.where(food_group: params[:food_group])
    else
      @ingredients = Ingredient.all
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params.require(:ingredient).permit(:name, :food_group, :quantity, :unit, :price_per_unit))
    
    if @ingredient.save
      redirect_to ingredients_path
    else
      render "new"
    end
  end

end
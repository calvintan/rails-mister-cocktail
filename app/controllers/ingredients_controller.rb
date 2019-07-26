class IngredientsController < ApplicationController
  def index
    @ingredient = Ingredient.find_by(name: params[:name])
    @cocktails = @ingredient.cocktails
  end
end

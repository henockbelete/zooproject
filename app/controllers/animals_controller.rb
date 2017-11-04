class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  def show
    @animal = Animal.find(params[:id])
  end
  def new
    @animal = Animal.new
  end
  def create
    animal_params = params.require(:animal).permit(:name, :food, :image_url, :artiszoo_id)

    @animal = Animal.new(animal_params)

    if @animal.save
       redirect_to @animal
    else
       render 'new'
    end
  end
end

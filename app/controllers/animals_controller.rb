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

  def edit
    @animal = Animal.find(params[:id])
  end
  def update
    @animal = Animal.find(params[:id])

    animal_params = params.require(:animal).permit(:name, :food, :image_url, :artiszoo_id)

    if @animal.update_attributes(animal_params)
      redirect_to @animal
    else
      render 'edit'
    end
  end
  def destroy
    @animal = Animal.find(params[:id])

    @animal.destroy

    redirect_to animals_path
  end
end

class ArtiszooController < ApplicationController

  def index
   @artiszoo = Artiszoo.all
  end

  def show
     @artiszoo = Artiszoo.find(params[:id])
     @animals =@artiszoo.animals
  end

 end

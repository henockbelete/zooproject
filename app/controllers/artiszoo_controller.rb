class ArtiszooController < ApplicationController

  def index
   @artiszoos = Artiszoo.all
  end

  def show
     @artiszoo = Artiszoo.find(params[:id])
     @animals =@artiszoo.animals
  end

 end

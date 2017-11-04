class ArtiszooController < ApplicationController

  def index
   @artiszoo = Artiszoo.all
 end
end

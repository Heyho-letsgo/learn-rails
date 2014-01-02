class VisitorsController < ApplicationController

  def new
    @owner = Owner.new
    flash.now[:alert] = 'Welcome!'
    flash.now[:notice] = 'My birthday is soon.'
  	#render 'visitors/new'
  end

end
class HotelsController < ApplicationController
  def index
    @search_result = Hotel.all
  end

  def show
    @hotel = Hotel.find_by(id: params[:id])
  end
end

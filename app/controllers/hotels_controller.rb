class HotelsController < ApplicationController
  def index
    @search_result = Hotel.all
  end

  def show
    @hotel = Hotel.find_by(id: params[:id])
  end

  def create
    new_hotel = Hotel.new(user_id: session[:user_id],
                          name: params[:name],
                          place: params[:place],
                          price: params[:price],
                          discription: params[:discription])

    if new_hotel.save
      redirect_to hotel_path(new_hotel.id)
    else
      render new_hotel_path
    end
  end
end

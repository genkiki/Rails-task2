class HotelsController < ApplicationController
  before_action :authenticate_user, {only: [:new, :create]}

  def new
  end

  def index
    @search_result = Hotel.all
  end

  def show
    @hotel = Hotel.find_by(id: params[:id])
  end

  def create

    new_hotel = Hotel.new(hotel_params)

    if new_hotel.save
      redirect_to hotel_path(new_hotel.id)
    else
      render new_hotel_path
    end
  end

  def hotel_params
    params.permit(:user_id, :name, :place, :price, :discription, :image_icon, :remove_image_icon)
  end
end

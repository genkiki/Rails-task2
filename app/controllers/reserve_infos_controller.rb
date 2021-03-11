class ReserveInfosController < ApplicationController

  def new
    puts "start reserve info new !!!!!!"
    params[:hotel_id] = 1#test code
    @hotel = Hotel.find_by(id: params[:hotel_id])
    price = @hotel.price * params[:num_person].to_i

    puts "hotel price: #{@hotel.price} "
    puts "num_person class: #{params[:num_person].class}"

    @new_reserve_info = ReserveInfo.new(reserve_info_params)

    render new_reserve_info_path(@new_reserve_info)
  end

  def create
    puts "start reserve info create !!!!!!"
    @new_reserve_info = ReserveInfo.new(reserve_info_params)
    if @new_reserve_info.save
      puts "new_reserve_info.save true !!!!!!"
      redirect_to reserve_infos_path
    else
      puts "new_reserve_info.save false !!!!!!"
      redirect_to hotel_path(@new_reserve_info.hotel_id)
    end
  end

  def index
    @reserve_infos = ReserveInfo.where(user_id: session[:user_id])
  end

  private

  def reserve_info_params
    p params
    params.permit(:user_id, :hotel_id, :start_date, :end_date, :num_person, :price)
  end
end

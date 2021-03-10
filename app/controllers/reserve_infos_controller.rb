class ReserveInfosController < ApplicationController
  def new
  end

  def index
    @reserve_infos = ReserveInfo.where(user_id: session[:user_id])
  end
end

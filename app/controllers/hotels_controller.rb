class HotelsController < ApplicationController
  def index
    @search_result = Hotel.all
  end
end

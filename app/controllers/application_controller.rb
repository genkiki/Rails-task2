class ApplicationController < ActionController::Base
    before_action :set_search

    def set_search
        @search = Hotel.ransack(params[:q]) #ransackメソッド推奨
        @search_hotel = @search.result
    end
end

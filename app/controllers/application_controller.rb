class ApplicationController < ActionController::Base
    before_action :set_search

    def set_search
        @search = Hotel.ransack(params[:q]) #ransackメソッド推奨
        @search_hotel = @search.result
    end

    def authenticate_user
        if session[:user_id] == nil
            puts "please login !!!!!!!!"
            redirect_to users_sign_in_path
        end
    end
end

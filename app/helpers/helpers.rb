class Helpers

    def self.current_user(params)
        @user = User.find_by_id(params[:user_id])
    end

    def self.is_logged_in?(params)
        !!params[:user_id]
    end
end
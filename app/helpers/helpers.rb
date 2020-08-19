class Helpers

    def self.current_user(session)
        #binding.pry
        User.find_by(id: session[:user_id])

    end

    def self.is_logged_in?(session)
    
        if session[:user_id].nil?
            false
        else
            !!User.find(session[:user_id])
        end

    end

end
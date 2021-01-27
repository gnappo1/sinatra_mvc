class ApplicationController < Sinatra::Base
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, ENV["SESSION_SECRET"]
        # set :show_exceptions, false
    end

    get '/' do
        erb :home
    end

    helpers do
        def logged_in?
            @current_user ||= User.find_by(id: session["user_id"]) if session["user_id"]
        end


        def redirect_if_not_logged_in
            if !logged_in?
                redirect '/signin'
            end
        end
    end

    # error Sinatra::NotFound do
    #     erb :not_found
    # end

    private

    
end
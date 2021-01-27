class UsersController < ApplicationController

    get '/signup' do
        erb :"users/signup"
    end

    post '/signup' do
        #try to create a new user 
        #if it is created successfully: set the session's user_id and then redirect to the show page
        #in case of error: display some generic message and then redirect to the form again
        @user = User.new(params["user"])
        if @user.save
            session["user_id"] = @user.id
            redirect "/appointments"
        else
            # flash[:error] = "Invalid signup input values"
            redirect '/signup'
        end
    end
end

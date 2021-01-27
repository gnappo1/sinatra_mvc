class SessionsController < ApplicationController

    get '/signin' do
        erb :"sessions/signin"
    end

    post '/signin' do
        #try to find the user by email
        #if the user was found and the password is correct
        #then se the session's user_id and redirect
        #else build generic error and redirect to the signin form
        user = User.find_by_email(params["user"]["email"])
        if user && user.authenticate(params["user"]["password"])
            session[:user_id] = user.id
            redirect '/appointments'
        else
            # flash[:error] = "Invalid login credentials"
            redirect "/signin"
        end
    end

    get '/signout' do
        session.delete("user_id")
        redirect '/signin'
    end

end
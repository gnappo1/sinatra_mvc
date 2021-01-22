class ApplicationController < Sinatra::Base
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        # set :show_exceptions, false
    end

    get '/' do
        erb :home
    end

    helpers do
        
    end

    # error Sinatra::NotFound do
    #     erb :not_found
    # end

    private

    
end
class AppointmentsController < ApplicationController

    get '/appointments' do
        @appointments = Appointment.all.includes(:patient).order(:name).includes(:physician).order(:name)
        erb :"appointments/index"
    end

    get '/appointments/new' do
        erb :"appointments/new"
    end

    get '/appointments/:id' do
        find_appointment
        erb :"appointments/show"
    end

    get '/appointments/:id/edit' do
        erb :"appointments/edit"
    end

    post '/appointments' do
        @appointment = Appointment.new(params["appointment"])
        if @appointment.save 
            redirect "/appointments/#{@appointment.id}"
        else
            flash[:error] = @appointment.errors.full_messages.to_sentence
            redirect "/appointments/new"
        end

    end

    private

    def find_appointment
        @appointment = Appointment.find(params["id"])
    end
end
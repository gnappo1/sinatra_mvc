class AppointmentsController < ApplicationController
    #CRUD
    get '/appointments' do
        redirect_if_not_logged_in
        @appointments = Appointment.all.includes(:patient).order(:name).includes(:physician).order(:name)
        erb :"appointments/index"
    end

    get '/appointments/new' do
        redirect_if_not_logged_in
        erb :"appointments/new"
    end

    get '/appointments/:id' do
        redirect_if_not_logged_in
        find_appointment
        erb :"appointments/show"
    end

    get '/appointments/:id/edit' do
        redirect_if_not_logged_in
        find_appointment
        erb :"appointments/edit"
    end

    post '/appointments' do
        @appointment = Appointment.new(params["appointment"])
        if @appointment.save
            redirect "/appointments/#{@appointment.id}"
        else
            # flash[:error] = @appointment.errors.full_messages.to_sentence
            redirect "/appointments/new"
        end

    end

    patch '/appointments/:id' do
        find_appointment
        if @appointment.update(params["appointment"])

            redirect "/appointments/#{@appointment.id}"
        else
            # flash[:error] = @appointment.errors.full_messages.to_sentence
            redirect "/appointments/#{@appointment.id}/edit"
        end
    end

    delete '/appointments/:id/delete' do
        find_appointment
        if @appointment.destroy
            redirect "/appointments"
        else
            # flash[:error] = @appointment.errors.full_messages.to_sentence
            redirect "/appoitnments/#{@appointment.id}"
        end
    end

    private

    def find_appointment
        @appointment = Appointment.find(params["id"])
    end
end
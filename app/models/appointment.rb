class Appointment < ActiveRecord::Base
    #association macros
    belongs_to :physician
    belongs_to :patient

    #validations
end

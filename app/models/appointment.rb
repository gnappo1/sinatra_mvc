class Appointment < ActiveRecord::Base
    #association macros
    belongs_to :physician
    belongs_to :patient

    #validations
    validates :datetime, :location, :physician_id, :patient_id, presence: true
end

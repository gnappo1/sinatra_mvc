class Physician < ActiveRecord::Base
    #association macros
    has_many :appointments
    has_many :patients, through: :appointments

    #validations
end

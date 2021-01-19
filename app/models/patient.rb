class Patient < ActiveRecord::Base
    #association macros
    has_many :appointments
    has_many :physicians, through: :appointments

    #validations
end

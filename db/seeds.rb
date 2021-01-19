# require_relative '../config/environment'
matteo = Patient.create(name: "Matteo", age: 29)
marco = Patient.create(name: "Marco", age: 39)
maria = Patient.create(name: "Maria", age: 19)

luca = Physician.create(name: "Luca", age: 60, experience: 23)
laura = Physician.create(name: "Laura", age: 40, experience: 17)
letizia = Physician.create(name: "Letizia", age: 56, experience: 31)


a_1 = Appointment.new(datetime: Time.now, location: "San Diego", scheduled: true)
a_1.patient, a_1.physician = matteo, luca
a_2 = Appointment.new(datetime: "20201212232412", location: "San Diego")
a_2.patient, a_2.physician = marco, letizia
a_3 = Appointment.new(datetime: "20201112232412", location: "San Diego", scheduled: true)
a_3.patient, a_3.physician = maria, laura
a_4 = Appointment.new(datetime: "20201201222412", location: "San Diego")
a_4.patient, a_4.physician = matteo, laura
a_1.save
a_2.save
a_3.save
a_4.save
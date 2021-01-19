ENV['SINATRA_ENV'] ||= 'development'

require './config/environment' #cannot use require_relative in config.ru with tux

run ApplicationController
use PatientsController
use PhysiciansController
use AppointmentsController
ENV['SINATRA_ENV'] ||= 'development'

require './config/environment' #cannot use require_relative in config.ru with tux

use PatientsController
use PhysiciansController
use AppointmentsController
run ApplicationController
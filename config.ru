ENV['SINATRA_ENV'] ||= 'development'

require './config/environment' #cannot use require_relative in config.ru with tux

use Rack::MethodOverride

run ApplicationController
use PatientsController
use PhysiciansController
use UsersController
use AppointmentsController
use SessionsController
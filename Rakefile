ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

namespace :db do
  task :load_config do
    require "./app/controllers/application_controller"
  end
end

task :console do
  Pry.start
end
ENV['RACK_ENV'] = 'test'
require_relative '../lib/time_line'
require 'rspec'
require 'capybara/rspec'
require 'slim'
Capybara.app = TimeLine

require File.dirname(__FILE__) + '/spec_helper'
require_relative Sinatra::Application.root + '/../lib/time_line.rb'
disable :run

require 'capybara'
require 'capybara/dsl'

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.include Capybara::DSL
end

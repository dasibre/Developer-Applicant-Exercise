require 'sinatra/base'
require 'slim'

class TimeLine < Sinatra::Base
	get '/' do
  		slim :index
	end

	# TimeLine.run!
end



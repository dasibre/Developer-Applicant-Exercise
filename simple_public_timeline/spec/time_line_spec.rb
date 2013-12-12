ENV['RACK_ENV'] = 'test'

require 'time_line'  # <-- your sinatra app
require 'rspec'
require 'rack/test'

describe 'TimeLine App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello World')
  end
end
require_relative '../spec_helper'

describe 'index', :type => :feature do
  it 'responds with successful status' do
    visit '/'
    page.status_code.should == 200
    page.should have_content('hello worldsssss')
  end
end

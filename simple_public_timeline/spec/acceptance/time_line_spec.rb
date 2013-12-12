require File.dirname(__FILE__) + '/../acceptance_helper'

describe TimeLine do
	it "shows a site" do
		visit '/'
		page.should have_content('Hello World')
	end
end
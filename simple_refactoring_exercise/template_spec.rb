require_relative 'template'

describe Template do
  include Template

  it "should substitute %CODE% and %ALTCODE% in the template" do
    template('Code is %CODE%; alt code is %ALTCODE%', '5678901234').should == 'Code is 5678901234; alt code is 56789-012'
  end

  it "should have same alt code output '00000-000' for all ids" do
  	required_ids = %w(00000 000 000000000000000)
  	required_ids.each do |id|
  		template('Code is %CODE%; alt code is %ALTCODE%', id).should == "Code is #{id}; alt code is 00000-000"
  	end
  end

  it "should have an 10 digit id" do
  	req_id = required_id_formatter('5678923234324343')
  	req_id.length.should == 10
  end
  
end

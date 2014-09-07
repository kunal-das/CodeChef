
## SPEC FOR ENORMOUS INPUT ##

require 'spec_helper'
require_relative '../Problem3/Main.rb'

describe "Main" do
	let(:run) {Main.new}

	it "should store the test cases and the divisor" do
		run.test_case_and_divisor("7 3")
		expect(run.line_count).to eql("7")
		expect(run.divisor).to eql("3")
	end

	describe "count should not change" do              // Need to work on this spec
		Main.any_instance.stub(:gets).and_return(3)
		expect(run.count_numbers(1, 2)).to eql(0)
	end
end

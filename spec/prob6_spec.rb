
## SPEC FOR THE HOLES IN THE TEXT ##

require 'spec_helper'
require_relative '../Problem6/submission1/Main.rb'

describe "Main" do
	let(:run) { Main.new }

	it "should have an empty array" do
		expect(run.arr_of_holes).to be_empty
	end

	it "should run the specified number of times" do
		Main.any_instance.stub_chain(:gets, :chomp).and_return("APPLE")
		run.get_string(2)
		expect(run.arr_of_holes.length).to eql(2)
	end

	it "should return the nummber of holes in a word" do
		run.count_holes("APPLE")
		expect(run.arr_of_holes).to eql([3])
	end
end

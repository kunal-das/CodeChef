
## SPEC FOR ENORMOUS INPUT ##

require 'spec_helper'
require_relative '../lib/problem3.rb'

describe "Main" do
	
	let(:run) { Main.new }

	it "should prompt the user equal to test cases" do
		tests = 2
		Main.any_instance.stub_chain(:gets, :chomp, :to_i).and_return(rand(1..100))
		expect(run.array_of_input_numbers(tests).length).to eql(2)
	end

	it "should return an array of input numbers" do
		Main.any_instance.stub_chain(:gets, :chomp, :to_i).and_return(rand(1..100))
		expect(run.array_of_input_numbers(rand(1..100)).class).to eql(Array) 
	end

	it "should return a valid count" do
		expect(run.count([], 3)).to eql(0)
		expect(run.count([0,1,2,3,4,6],3)).to eql(2)
	end

end

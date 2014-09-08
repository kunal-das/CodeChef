
## SPEC FOR THE SAMLL FACTORIAL PROBLEM ##

require 'spec_helper'
require_relative '../lib/problem5.rb'

describe "Main" do
	
	let(:run) { Main.new }

	it "should return factorial" do
		#run = Main.new
		expect(run.factorial(4)).to eql(24)
	end

	it "should return an array of input numbers" do
		#run = Main.new
		Main.any_instance.stub_chain(:gets, :chomp, :to_i).and_return(rand(1..100))
		expect(run.get_numbers(rand(1..100)).class).to eql(Array) 
	end

	it "should prompt the user equal to test cases" do
		#run = Main.new
		Main.any_instance.stub_chain(:gets, :chomp, :to_i).and_return(rand(1..100))
		expect(run.get_numbers(2).length).to eql(2)
	end

	it "should return an array of factorials" do
		expect(run.array_of_factorial([3, 2]).first).to eql(6)
	end
end

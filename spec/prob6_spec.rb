
## SPEC FOR THE HOLES IN THE TEXT ##

require 'spec_helper'
require_relative '../lib/problem6.rb'

describe "Main" do
	
	let(:run) { Main.new }

	it "should prompt the user equal to test cases" do
		tests = 2
		Main.any_instance.stub_chain(:gets, :chomp).and_return("APPLE")
		expect(run.array_of_words(tests).length).to eql(2)
	end

	it "should return an array of words" do
		Main.any_instance.stub_chain(:gets, :chomp).and_return("APPLE")
		expect(run.array_of_words(rand(1..100)).class).to eql(Array)
		expect(run.array_of_words(rand(1..100)).first).to eql("APPLE") 
	end

	it "should return a zero count for empty string" do
		expect(run.count_holes(" ")).to eql(0)
	end

	it "should return non zero count for non-empty string" do
		expect(run.count_holes("APPLE")).to eql(3)
	end

	it "should return array of hole count" do
		expect(run.array_of_hole_counts(["APPLE", "BALL"])).to eql([3, 3])
	end
end

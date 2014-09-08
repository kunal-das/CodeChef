## SPECS FOR THE FACTORIAL PROBLEM##

require 'spec_helper'
require_relative '../lib/problem4.rb'

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

	it "should return the trailing zeroes" do
		expect(run.trailing_zeroes(60)).to eql(14)
	end

	it "should return array of trailing zeroes" do
		expect(run.returns_array_of_trailing_zeroes([3, 60])).to eql([0, 14])
	end
end

require 'spec_helper'
require_relative '../Problem5/Main.rb'

describe "Main" do
	let(:run) {Main.new}

	it "should return the factorial of the number" do
		expect(run.factorial(3)).to eql(6)
	end

	it "runs only 2 times" do
		Main.any_instance.stub_chain(:gets, :chomp, :to_i).and_return(3)
		run.get_numbers(2)
		expect(run.arr.length).to eql(2)
	end
end

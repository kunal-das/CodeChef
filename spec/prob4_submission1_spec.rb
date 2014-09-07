## SPECS FOR THE FACTORIAL PROBLEM##

require 'spec_helper'
require_relative '../Problem4/submission 1/Main.rb'

describe "Main" do
	let(:run) {Main.new}

	it "should return the number of trailing zeroes in array" do
	run.trailing_zeroes([60])
	expect(run.zeroes_count).to eql(14)
	end
end

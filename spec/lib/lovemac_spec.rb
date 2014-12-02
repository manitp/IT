require "./lovemac.rb"
require "spec_helper"

describe "lovemac" do
  # Write your test cases in here
    it "check the Love" do
    	account1=lovemac(3);
   	  expect(account1).to eq("Love")
    end
end
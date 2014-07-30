require "spec_helper"
require "email_pattern_checker"

describe EmailPatternChecker do
  before{
    @checker = EmailPatternChecker.new("John Ferguson", "john.ferguson@alphasights.com")
  }

  it "can be initialised with an name and email string" do
    expect(@checker.name).to eq "John Ferguson"
    expect(@checker.email).to eq "john.ferguson@alphasights.com"
  end

  it "knows the patter of the initialised email string" do
    expect(@checker.pattern).to eq "first_name_dot_last_name"
  end
end
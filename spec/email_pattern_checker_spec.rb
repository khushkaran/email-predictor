require "spec_helper"
require "email_pattern_checker"

describe EmailPatternChecker do
  before{
    @checker = EmailPatternChecker.new("john.ferguson@alphasights.com")
  }

  it "can be initialised with an email string" do
    expect(@checker.email).to eq "john.ferguson@alphasights.com"
  end

  it "knows the patter of the initialised email string" do
    expect(@checker.pattern).to eq "first_name_dot_last_initial"
  end
end
require "spec_helper"
require "email_pattern_checker"

describe EmailPatternChecker do
  it "can be initialised with an email string" do
    checker = EmailPatternChecker.new("john.ferguson@alphasights.com")
    expect(checker.email).to be "john.ferguson@alphasights.com"
  end
end
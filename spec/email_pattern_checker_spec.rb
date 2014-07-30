require "spec_helper"
require "email_pattern_checker"

describe EmailPatternChecker do
  it "can be initialised with an name and email string" do
    checker = EmailPatternChecker.new("John Ferguson", "john.ferguson@alphasights.com")
    expect(checker.name).to eq "John Ferguson"
    expect(checker.email).to eq "john.ferguson@alphasights.com"
  end

  context 'knows the pattern of the initialised email string' do
    it "for first_name_dot_last_name" do
      checker = EmailPatternChecker.new("John Ferguson", "john.ferguson@alphasights.com")
      expect(checker.pattern).to eq "first_name_dot_last_name"
    end

    it "for first_name_dot_last_initial" do
      checker = EmailPatternChecker.new("John Ferguson", "john.f@alphasights.com")
      expect(checker.pattern).to eq "first_name_dot_last_initial"
    end

    it "for first_initial_dot_last_name" do
      checker = EmailPatternChecker.new("John Ferguson", "j.ferguson@alphasights.com")
      expect(checker.pattern).to eq "first_initial_dot_last_name"
    end

    it "for first_initial_dot_last_initial" do
      checker = EmailPatternChecker.new("John Ferguson", "j.f@alphasights.com")
      expect(checker.pattern).to eq "first_initial_dot_last_initial"
    end
  end
end
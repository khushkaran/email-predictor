require "spec_helper"
require "email_generator"

describe EmailGenerator do
  context "can return an email" do
    before{
      @emailgen = EmailGenerator.new("Khushkaran Bajwa", "kesrinishaan.com")
    }
    specify "with the pattern first_name_dot_last_name" do
      actual_pattern = @emailgen.first_name_dot_last_name
      expected_pattern = "khushkaran.bajwa@kesrinishaan.com"
      expect(actual_pattern).to eq expected_pattern
    end

    specify "with the pattern first_name_dot_last_initial" do
      actual_pattern = @emailgen.first_name_dot_last_initial
      expected_pattern = "khushkaran.b@kesrinishaan.com"
      expect(actual_pattern).to eq expected_pattern
    end

    specify "with the pattern first_initial_dot_last_name" do
      expected_pattern = "k.bajwa@kesrinishaan.com"
      actual_pattern = @emailgen.first_initial_dot_last_name
      expect(actual_pattern).to eq expected_pattern
    end
  end
end
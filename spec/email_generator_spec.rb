require "spec_helper"
require "email_generator"

describe EmailGenerator do
  context "can return an email" do
    before{
      @emailgen = EmailGenerator.new
    }
    specify "with the pattern first_name_dot_last_name" do
      actual_pattern = @emailgen.first_name_dot_last_name("Khushkaran Bajwa", "kesrinishaan.com")
      expected_pattern = "khushkaran.bajwa@kesrinishaan.com"
      expect(actual_pattern).to eq expected_pattern
    end
  end
end
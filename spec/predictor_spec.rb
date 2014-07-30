require "spec_helper"
require "predictor"

describe Predictor do
  it "knows the current dataset" do
    predictor = Predictor.new
    expected_dataset = {"John Ferguson" => "john.ferguson@alphasights.com","Damon Aw" => "damon.aw@alphasights.com","Linda Li" => "linda.li@alphasights.com","Larry Page" => "larry.p@google.com","Sergey Brin" => "s.brin@google.com","Steve Jobs" => "s.j@apple.com"}
    expect(predictor.dataset).to eq expected_dataset
  end

  context "initialised with name and domain strings" do
    before{
      @predictor = Predictor.new("Peter Wong", "alphasights.com")
    }
    
    it "can initialised with name and domain strings" do
      expect(@predictor.name).to eq "Peter Wong"
      expect(@predictor.domain).to eq "alphasights.com"
    end

    it "can get the record(s) for the it domain" do
      expected_matches = {"John Ferguson" => "john.ferguson@alphasights.com","Damon Aw" => "damon.aw@alphasights.com","Linda Li" => "linda.li@alphasights.com"}
      expect(@predictor.matches).to eq expected_matches
    end

    it "can return the email with the correct pattern" do
      expected_email = "peter.wong@alphasights.com"
      expect(@predictor.email).to eq expected_email
    end
  end
end
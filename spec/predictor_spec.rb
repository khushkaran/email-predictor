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
      expect(@predictor.email_prediction).to eq expected_email
    end
  end

  it "Returns an error if it cannot return a suitable prediction" do
    predictor = Predictor.new("Barack Obama", "whitehouse.gov")
    expect(predictor.email_prediction).to eq "Unable to make an accurate prediction"
  end
end
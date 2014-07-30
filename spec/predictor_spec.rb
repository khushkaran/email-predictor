require "spec_helper"
require "predictor"

describe Predictor do
  it "knows the current dataset" do
    predictor = Predictor.new
    expected_dataset = {"John Ferguson" => "john.ferguson@alphasights.com","Damon Aw" => "damon.aw@alphasights.com","Linda Li" => "linda.li@alphasights.com","Larry Page" => "larry.p@google.com","Sergey Brin" => "s.brin@google.com","Steve Jobs" => "s.j@apple.com"}
    expect(predictor.dataset).to eq expected_dataset
  end

  it "can initialised with name and domain strings" do
    predictor = Predictor.new("Peter Wong", "alphasights.com")
    expect(predictor.name).to eq "Peter Wong"
    expect(predictor.domain).to eq "alphasights.com"
  end
end
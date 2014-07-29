require "spec_helper"
require "predictor"

describe Predictor do
  it "knows the current dataset" do
    predictor = Predictor.new
    expected_dataset = {"John Ferguson" => "john.ferguson@alphasights.com","Damon Aw" => "damon.aw@alphasights.com","Linda Li" => "linda.li@alphasights.com","Larry Page" => "larry.p@google.com","Sergey Brin" => "s.brin@google.com","Steve Jobs" => "s.j@apple.com"}
    expect(predictor.dataset).to eq expected_dataset
  end
end
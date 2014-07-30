require "spec_helper"
require "string_patch"

describe String do
  it "can extract the domain name from an email string" do
    actual_domain = "john.ferguson@alphasights.com".to_domain
    expect(actual_domain).to eq "alphasights.com"
  end
end
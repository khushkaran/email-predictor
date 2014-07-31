require "spec_helper"

describe "Web Interface" do
  before{
    visit '/'
    fill_in "advisor_name", with: "Craig Silverstein"
    fill_in "advisor_domain", with: "google.com"
    click_button 'Submit'
  }

  it "can return the correct email" do
    expect(page).to have_content "craig.s@google.com"
  end

  it "can clear the current query" do
    click_button 'New Query'
    expect(page).not_to have_content "craig.s@google.com"
  end
end
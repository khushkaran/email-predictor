require "spec_helper"

describe "Web Interface" do
  it "can return the correct email" do
    visit '/'
    fill_in "advisor_name", with: "Craig Silverstein"
    fill_in "advisor_domain", with: "google.com"
    click_button 'Submit'
    expect(page).to have_content "craig.s@google.com"
  end
end
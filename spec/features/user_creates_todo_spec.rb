require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    visit root_path

    create_todo "Buy milk"

    expect(page).to display_todo "Buy milk"
  end
end

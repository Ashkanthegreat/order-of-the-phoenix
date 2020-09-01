require 'rails_helper'

feature 'user can search for members of a house' do
  scenario 'user submits valid house name' do
    visit '/'

    select "Gryffindor", from: :house
    click_on "Search For Members"
    expect(current_path).to eq(search_path)
    expect(page).to have_css(".phoenix_characters", count: 7)
  end
end

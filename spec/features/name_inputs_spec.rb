require 'spec_helper'

feature 'Player entry name page' do
  scenario 'Can enter player names' do
    visit('/')
    expect(page).to have_content("Enter names for battle")
    fill_in "Player 1", with: "Joe"
    fill_in "Player 2", with: "Haydon"
    click_button("submit names")
    #find('input[name="commit"]').click
  end
end
require 'spec_helper'

feature 'Player entry name page' do
  scenario 'Can enter player names' do
    visit('/')
    expect(page).to have_content("Enter names for battle")
    fill_in "Player 1", with: "Joe"
    fill_in "Player 2", with: "Haydon"
    click_button("submit names")
    expect(page).to have_text("Joe vs. Haydon")
    #find('input[name="commit"]').click
  end
end

feature "Player can see a monster's hitpoints" do
  
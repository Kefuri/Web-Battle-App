require 'spec_helper'

feature 'Player entry name page' do
  scenario 'Can enter player names' do
    sign_in_and_play
    expect(page).to have_text("Joe vs. Haydon")
    #find('input[name="commit"]').click
  end
end

feature "Player can see a monster's hitpoints" do
  scenario "Can display hitpoints of a monster" do
    sign_in_and_play
    expect(page).to have_text("Joe vs. Haydon")
    expect(page).to have_text("Jigglypoof: 90")
  end
end

feature "Player can attack" do
  scenario "can attack and receive a confirmation" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_text("Joe Attacked Haydon!")
  end
  scenario "can attack and make other player lose health" do
    sign_in_and_play
     click_button("Attack!")
     expect(page).to have_text("Haydon lost 10 health!")
  end
end

    

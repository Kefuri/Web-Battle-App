def sign_in_and_play
  visit('/')
  fill_in "Player 1", with: "Joe"
  fill_in "Player 2", with: "Haydon"
  click_button("Submit Names")
end
def sign_in_and_play
  visit('/')
  fill_in('player1_name', with: "Daniel")
  fill_in('player2_name', with: "Justyna")
  click_button("Submit")
end

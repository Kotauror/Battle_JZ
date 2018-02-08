feature 'attack player' do
  scenario 'click attack, attack player 2, and get confirmation message' do
    sign_in_and_play
    click_button "Attack Justyna"
    expect(page).to have_content("Daniel attacked Justyna")
  end

  scenario 'back to battle arena' do
    sign_in_and_play
    click_button "Attack Justyna"
    click_button "Go back to the battle arena"
    expect(page).to have_content("Daniel vs Justyna")
  end
end
